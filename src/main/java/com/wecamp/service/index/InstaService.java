package com.wecamp.service.index;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

@Service
public class InstaService {
	
	private static final String url = "https://graph.instagram.com/me/media?media-id=17877290851747798&fields=media_url,%20permalink,%20timestamp,%20caption&access_token=IGQVJWbGotZAVRRN3FZAUHREcWt5T1lKRVI3azZAiSWZAEcjE5Sy02R0ZAZAbWJKVFpwb0JqdGdCTFI2WDJRV200VzdaUmVNd3JNYVpBVmIxc0Q4YjZAKbGNWeVZAKOTF0ckpzY2JzeG1pbHhNMVphTGtYbnRvNgZDZD";
	
	public static String getHttpHTML_GET() {
		try {
			URL object = new URL(url);
			HttpURLConnection con = (HttpURLConnection)object.openConnection();
			con.setRequestMethod("GET");
			con.setConnectTimeout(3000); // 연결 타임아웃 3초
			con.setReadTimeout(3000); // 읽기 타임아웃 3초
			
			System.out.println("$$메서드"+con.getRequestMethod());
			System.out.println("$$타입"+con.getContentType());
			System.out.println("$$코드"+con.getResponseCode());
			System.out.println("$$응답메시지"+con.getResponseMessage());
			
			try {
				InputStream is = con.getInputStream();

				ByteArrayOutputStream baos = new ByteArrayOutputStream();
				
				byte[] buf = new byte[1024*8];
				int length = 0;
				while((length = is.read(buf)) != -1) {
					baos.write(buf, 0, length);
				}
				//System.out.println(new String(baos.toByteArray(), "UTF-8"));
				
				System.out.println("$$baos : "+baos);
				String jsonArray = baos.toString("UTF-8");
				jsonArray = jsonArray.replaceAll("\\\\/", "/");
				System.out.println("$$test : "+jsonArray);
				return jsonArray;
			}catch(Exception e) {
				e.printStackTrace();
			}
			con.disconnect();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
//	public static void main(String[] args) {
//		getHttpHTML_GET();
//	}

}
