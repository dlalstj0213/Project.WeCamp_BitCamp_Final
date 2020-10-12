package com.wecamp.setting;

import java.io.File;
import java.io.IOException;

public interface Path {
	///개인서버 업로드 절대경로
	String CAMP_IMG_THUMB = "resources/images/camp-img/thumb/";
	String CAMP_IMG_DETAIL = "resources/images/camp-img/detail/";
	String CAMP_IMG_SORT = "resources/images/camp-img/sort/";
	
	////배포 서버 업로드 절대경로
//	String CAMP_IMG_THUMB = "/srv/tomcat9/wecamp/resources/images/camp-img/thumb/";
//	String CAMP_IMG_DETAIL = "/srv/tomcat9/wecamp/resources/images/camp-img/detail/";
//	String CAMP_IMG_SORT = "/srv/tomcat9/wecamp/resources/images/camp-img/sort/";
	
	public static void main(String[] args) throws IOException {
		String path = new File(".").getCanonicalPath();
		System.out.println(path);
	}
}

