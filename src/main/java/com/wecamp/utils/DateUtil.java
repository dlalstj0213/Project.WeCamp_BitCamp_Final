package com.wecamp.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
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
}
