package com.wecamp.service.owner;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.wecamp.mapper.OwnerMapper;
import com.wecamp.model.Inquiry;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
class OwnerServiceImpl implements OwnerService{
	private OwnerMapper ownerMapper;
	
	@Override
	public boolean submitInquiryService(Inquiry inquiry) {
		StringBuffer remake = new StringBuffer();
		if(inquiry.getOwner_num().length() != 10) {
			return false;
		} else {
			remake.append(inquiry.getOwner_num().substring(0, 3));
			remake.append("-");
			remake.append(inquiry.getOwner_num().substring(3, 5));
			remake.append("-");
			remake.append(inquiry.getOwner_num().substring(5, 10));
		}
		inquiry.setOwner_num(remake.toString().trim());
		HashMap<String, Object> query = new HashMap<String, Object>();
		query.put("query", inquiry);
		return ownerMapper.insertInquiry(query);
	}
}
