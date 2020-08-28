package com.wecamp.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class ChartVo {
	private String item;
	private int number;
	
//	@Override
//	public String toString() {//data �����ϱ� ���� �޼ҵ�(tip) ==> System.out.println(new ChartVo()) -> toString �ڵ� ȣ���
//		return "Vo4GoogleChart item : "+ item +", number : "+ number;
//	}
}
