package com.wecamp.auth;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.oauth.OAuth20Service;

public class SnsLogin {
	private OAuth20Service oauthServcie;
	
	public SnsLogin(SnsValue sns) {
		this.oauthServcie = new ServiceBuilder(sns.getClientId())
						.apiSecret(sns.getClientSecret())
						.callback(sns.getRedirectUrl())
						.scope("profile")
						.build(sns.getApi20Instance());
	}
	public String getNaverAuthURL() {
		return this.oauthServcie.getAuthorizationUrl();
	}
}
