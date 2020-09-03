package com.wecamp.vo;

import java.util.List;

import com.wecamp.model.Camp;
import com.wecamp.model.Img;
import com.wecamp.model.Owner;
import com.wecamp.model.Sort;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class OwnerDetailVo {
	private Camp camp;
	private Owner owner;
	private List<Img> img_list;
	private List<Sort> sort_list;
	private int total_heart;
}
