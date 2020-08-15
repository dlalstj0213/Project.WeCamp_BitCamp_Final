package com.wecamp.setting;

import java.io.File;
import java.io.IOException;

import lombok.extern.log4j.Log4j;

@Log4j
public class NameValuePair {
	
	public String getRestApiKey() {
			String basePath = new File("").getAbsolutePath();
			log.info("#>basePath : "+basePath);
		return basePath;
	}
}
