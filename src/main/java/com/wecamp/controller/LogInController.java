package com.wecamp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.MissingAuthorizationException;
import org.springframework.social.connect.Connection;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.social.facebook.api.UserOperations;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("login")
public class LogInController {
	
	// 페이스북 oAuth 관련
    @Autowired
    private FacebookConnectionFactory connectionFactory;
    @Autowired
    private OAuth2Parameters oAuth2Parameters;
	
	@RequestMapping(value = "login.wcc", method = { RequestMethod.GET, RequestMethod.POST })
	private String login() {
		/*
		 * OAuth2Operations oauthOperations = connectionFactory.getOAuthOperations();
		 * String facebook_url =
		 * oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE,
		 * oAuth2Parameters);
		 * 
		 * //model.addAttribute("facebook_url", facebook_url);
		 * System.out.println("/facebook" + facebook_url);
		 */
		return "client/member/login/"+WebTitle.TITLE+"로그인";
	}
	@RequestMapping(value = "test", method = { RequestMethod.GET, RequestMethod.POST })
	private String test() {
		/*
		 * OAuth2Operations oauthOperations = connectionFactory.getOAuthOperations();
		 * String facebook_url =
		 * oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE,
		 * oAuth2Parameters);
		 * 
		 * //model.addAttribute("facebook_url", facebook_url);
		 * System.out.println("/facebook" + facebook_url);
		 */
		return "admin/test";
	}
	
	/*
	 * @RequestMapping(value = "/facebookSignInCallback", method = {
	 * RequestMethod.GET, RequestMethod.POST }) public String
	 * facebookSignInCallback(@RequestParam String code) throws Exception {
	 * 
	 * try { String redirectUri = oAuth2Parameters.getRedirectUri();
	 * System.out.println("Redirect URI : " + redirectUri);
	 * System.out.println("Code : " + code);
	 * 
	 * OAuth2Operations oauthOperations = connectionFactory.getOAuthOperations();
	 * AccessGrant accessGrant = oauthOperations.exchangeForAccess(code,
	 * redirectUri, null); String accessToken = accessGrant.getAccessToken();
	 * System.out.println("AccessToken: " + accessToken); Long expireTime =
	 * accessGrant.getExpireTime();
	 * 
	 * 
	 * if (expireTime != null && expireTime < System.currentTimeMillis()) {
	 * accessToken = accessGrant.getRefreshToken();
	 * log.info("accessToken is expired. refresh token = {}"+accessToken);
	 * //logger.info("accessToken is expired. refresh token = {}", accessToken); };
	 * 
	 * Connection<Facebook> connection =
	 * connectionFactory.createConnection(accessGrant); Facebook facebook =
	 * connection == null ? new FacebookTemplate(accessToken) : connection.getApi();
	 * UserOperations userOperations = facebook.userOperations();
	 * 
	 * try
	 * 
	 * { String [] fields = { "id", "email", "name"}; User userProfile =
	 * facebook.fetchObject("me", User.class, fields); System.out.println("유저이메일 : "
	 * + userProfile.getEmail()); System.out.println("유저 id : " +
	 * userProfile.getId()); System.out.println("유저 name : " +
	 * userProfile.getName());
	 * 
	 * } catch (MissingAuthorizationException e) { e.printStackTrace(); }
	 * 
	 * 
	 * } catch (Exception e) {
	 * 
	 * e.printStackTrace();
	 * 
	 * } return "redirect:/join";
	 * 
	 * }
	 */
}
