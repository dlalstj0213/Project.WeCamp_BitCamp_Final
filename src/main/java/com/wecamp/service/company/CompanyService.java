package com.wecamp.service.company;

import com.wecamp.model.Camp;

public interface CompanyService {

	String get_campList();
	void del_campList(long camp_idx);
	void Edit_campList(Camp camp);
}
