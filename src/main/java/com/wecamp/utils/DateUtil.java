package com.wecamp.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
	Calendar cal;
	DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
	
	public DateUtil() {
		cal = Calendar.getInstance();
		cal.setTime(new Date());
	}
	
	public String getToday() {
		String todayStr = df.format(cal.getTime());
		return todayStr;
	}
	
	public String getTommorrow(){
		cal.add(Calendar.DATE, 1);
        return df.format(cal.getTime());
	}

	public String getYesterday(){
		cal.add(Calendar.DATE, -1);
		return df.format(cal.getTime());
	}
	
	/**
	 * "~"로 구분된 나눌 날짜를 매개변수로 넣고 호출하면 String[] 배열 형태로 값을 반환한다.
	 * @param udate 나눌 날짜 with String type 
	 * @param splitCharacter 나누는 기준이 될 문자 with String type
	 * @return return String[] <br/>
	 * &#9 [0] :: startDate <br/>
	 * &#9 [1] :: endDate 
	 */
	public String[] splitDates(String udate, String splitCharacter) {
		String[] result = udate.split(splitCharacter);
		result[0] = result[0].trim();
		result[1] = result[1].trim();
		return result;
	}
	
	public boolean  isWithinRange(String date, String startDate, String endDate) {
		LocalDate localDate = null;
		LocalDate startLocalDate = null;
		LocalDate endLocalDate = null;
		try {
			localDate = LocalDate.parse(date);
			startLocalDate = LocalDate.parse(startDate);
			endLocalDate = LocalDate.parse(endDate);
		} catch(DateTimeParseException e) {
			date = date.replaceAll("/", "-");
			startDate = startDate.replaceAll("/", "-");
			endDate = endDate.replaceAll("/", "-");
			localDate = LocalDate.parse(date);
			startLocalDate = LocalDate.parse(startDate);
			endLocalDate = LocalDate.parse(endDate);
		}
		endLocalDate = endLocalDate.plusDays(1); //endDate는 포함하지 않으므로 +1을 해야함
		return (!localDate.isBefore(startLocalDate)) && (!localDate.isAfter(endLocalDate));
	}
	
	public static void main(String[] args) {
		DateUtil d = new DateUtil();
		System.out.println(d.getToday());
	}
}

