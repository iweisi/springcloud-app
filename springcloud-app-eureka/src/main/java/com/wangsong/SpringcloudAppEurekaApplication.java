package com.wangsong;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class SpringcloudAppEurekaApplication {

	public static void main(String[] args) {
		new SpringApplicationBuilder(SpringcloudAppEurekaApplication.class).web(true).run(args);
	}

}