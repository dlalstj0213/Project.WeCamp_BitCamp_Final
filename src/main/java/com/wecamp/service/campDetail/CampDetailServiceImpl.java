package com.wecamp.service.campDetail;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonArray;
import com.wecamp.mapper.CampDetailMapper;
import com.wecamp.mapper.ReviewMapper;
import com.wecamp.model.Camp;
import com.wecamp.model.Img;
import com.wecamp.model.Review;
import com.wecamp.model.ReviewVo;
import com.wecamp.model.Sort;
import com.wecamp.setting.WebTitle;
import com.wecamp.utils.PageUtil;
import com.wecamp.utils.StarUtil;
import com.wecamp.vo.ChartVo;
import com.wecamp.vo.Pagination;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class CampDetailServiceImpl implements CampDetailService {

	CampDetailMapper mapper;
	ReviewMapper rmapper;

	private long getDate(Date wdate) {
		long diffDays=0L;
		try {
			Calendar cal = Calendar.getInstance();
			cal.setTime(new Date());
			DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
			String todayStr = df.format(cal.getTime());
			String wdateStr = df.format(wdate);

			Date today = df.parse(todayStr);
			Date wdateFormat =df.parse(wdateStr); 
			long diff = today.getTime()-wdateFormat.getTime();
			diffDays = diff/ (24 * 60 * 60 * 1000);
			log.info("####diffDays: " + diffDays);
		}catch(java.text.ParseException e) {
			e.printStackTrace();
		}
		return diffDays;
	}

	private List<Integer> getStarRateEach(List<Review> reviewList){
		StarUtil util = new StarUtil();
		//별점 당 개수 구할 변수
		int avg1=0;
		int avg2=0;
		int avg3=0;
		int avg4=0;
		int avg5=0;
		int totalStar=0;

		for(Review review : reviewList) {
			if(review.getStar()==1) {
				avg1++;
				totalStar++;
			}else if(review.getStar()==2) {
				avg2++;
				totalStar++;
			}else if(review.getStar()==3) {
				avg3++;
				totalStar++;
			}else if(review.getStar()==4) {
				avg4++;
				totalStar++;
			}else{
				avg5++;
				totalStar++;
			}
		}

		List<Integer> starRate = new ArrayList<Integer>();
		starRate.add(util.getAvgStarEach(avg1, totalStar));
		starRate.add(util.getAvgStarEach(avg2, totalStar));
		starRate.add(util.getAvgStarEach(avg3, totalStar));
		starRate.add(util.getAvgStarEach(avg4, totalStar));
		starRate.add(util.getAvgStarEach(avg5, totalStar));

		return starRate;
	}

	@Override
	public ModelAndView selectReviewS(int camp_idx, boolean isMore, HttpSession session, ModelAndView mv, String nextPage){
		PageUtil pageUtil = new PageUtil();
		StarUtil starUtil = new StarUtil();

		String cpStr=null;
		if(!isMore){//isMore이 false면
			session.removeAttribute("cp");

		}else{
			cpStr = nextPage;
		}

		int currentPage = pageUtil.getCurrentPageSession(cpStr, session);
		int pageSize = pageUtil.getPageSize("5", session);

		int reviewListCount = rmapper.selectCountReview(camp_idx);
		Pagination pagination = new Pagination(reviewListCount, currentPage, pageSize);

		HashMap<String, Object> query = new HashMap<String, Object>();
		query.put("page", pagination);
		query.put("camp_idx", camp_idx);
		List<Review> reviewList = rmapper.selectReview(query);
		if(reviewListCount==0) {
			mv.addObject("reviewVo",null);
		}else {
			List<Integer> starRate = null;
			if(!isMore) {
				starRate = getStarRateEach(reviewList);
				//mv.addObject("starRate", starRate);

				List<ChartVo> chart = getStarChart(starRate);
				mv.addObject("chart",chart);
			}

			float avgStar = rmapper.selectStarAvg(camp_idx);
			avgStar = Math.round(avgStar*10)/10.0f;
			Date wdate = null;
			long diffDays=0L;
			for(Review review : reviewList){
				review.setHalfStarExist(starUtil.checkHalfStar(review.getStar()));
				review.setEmptyStarNum(starUtil.getEmptyStarNumber(review.getStar()));
				review.setFullStarNum(starUtil.getFullStarNumber(review.getStar()));
				wdate = review.getWdate();
				diffDays = getDate(wdate);
				review.setDiffDays(diffDays);
			}
			ReviewVo reviewVo = new ReviewVo(reviewList, avgStar,
					starUtil.getFullStarNumber(avgStar),
					starUtil.checkHalfStar(avgStar),
					starUtil.getEmptyStarNumber(avgStar)
					);

			mv.addObject("reviewVo",reviewVo);
			mv.addObject("page", pagination);
			log.info("###>>reviewVoSize : "+reviewVo.getReviewList().size());
			log.info("###>>pagination"+pagination);
			log.info("###>>reviewVo : "+reviewVo);

			if(reviewList==null) mv = new ModelAndView(); 
		}

		return mv;
	}	 

	private List<Sort> selectSortS(int camp_idx, String sort_name){
		HashMap<String, Object> query= new HashMap<String,Object>();
		query.put("camp_idx", camp_idx);
		query.put("sort_name", sort_name);

		return mapper.selectSort(query);
	}


	@Override
	public ModelAndView campDetail(int camp_idx) {
		Camp camp =mapper.selectCampInfo(camp_idx);
		//모든 편의시설 담을 conv
		List<String> allConvList = new ArrayList<String>();

		//편의/안전/기타 시설 담은 변수
		String conv = camp.getConv();
		String secConv = camp.getSec_conv();
		String etxConv = camp.getEtc_conv();

		if(conv!=null) {
			String[] convList = conv.split(",");
			if(convList.length!=0||convList!=null){
				for (int i = 0; i < convList.length; i++) {
					convList[i].trim();
					allConvList.add(convList[i]);
				}
				log.info("#>>conList : "+convList);
			}
		}

		if(secConv!=null) {
			String[] secConvList = secConv.split(",");
			if(secConvList.length!=0||secConvList!=null){
				for (int i = 0; i < secConvList.length; i++) {
					secConvList[i].trim();
					allConvList.add(secConvList[i]);
				}
				log.info("#>>secConvList : "+secConvList);
			}
		}
		if(etxConv!=null) { 
			String[] etcConvList = etxConv.split(",");
			if(etcConvList.length!=0||etcConvList!=null){
				for (int i = 0; i < etcConvList.length; i++) {
					etcConvList[i].trim();
					allConvList.add(etcConvList[i]);
				}
				log.info("#>>etcConvList : "+etcConvList);
			}
		}

		if(allConvList.size()==0||allConvList==null) {
			allConvList.add("갖춰진 시설 없음");
		}

		log.info("#>>allConvList : "+allConvList);

		List<Img> ImgDetailList = mapper.selectDetailImg(camp_idx);
		String campName = camp.getCamp_name();
		ModelAndView mv = new ModelAndView("client/search/camp_detail/"+WebTitle.TITLE+campName);

		List<String> sortNameList = mapper.selectSortName(camp_idx);
		List<List<Sort>> list= new ArrayList<List<Sort>>();


		for(int i=0; i<sortNameList.size(); i++) {

			list.add(selectSortS(camp_idx, sortNameList.get(i)));

			log.info("###3 구분이름 : "+sortNameList+" : "+i);
		}
		mv.addObject("camp", camp);
		mv.addObject("allConvList",allConvList);
		mv.addObject("sortNameList",sortNameList);
		mv.addObject("ImgDetailList",ImgDetailList);
		mv.addObject("list", list);
		//mv.addObject("sortNameSize",sortNameList.size());

		return mv;
	}

	//	public List<ChartVo> getChartS(){
	//		List<Integer> starRate = null;
	//		
	//			starRate = getStarRateEach(reviewList);
	//			//mv.addObject("starRate", starRate);
	//			
	//			List<ChartVo> chart = getStarChart(starRate);
	//			//mv.addObject("chart",chart);
	//		return chart;
	//	}



	private List<ChartVo> getStarChart(List<Integer> starRate){
		List<ChartVo> list = new ArrayList<ChartVo>();


		String items[] = {"1 STARS","2 STARS","3 STARS","4 STARS","5 STARS"};
		int numbers[] = new int[5];

		for(int i =0; i<items.length; i++) {
			numbers[i]=starRate.get(i);
			ChartVo vo = new ChartVo(items[i], numbers[i]);
			list.add(vo);
		}

		return list;
	}

}
