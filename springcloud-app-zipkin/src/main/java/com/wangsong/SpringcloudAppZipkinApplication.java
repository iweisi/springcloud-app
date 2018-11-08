package com.wangsong;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.sleuth.zipkin.stream.EnableZipkinStreamServer;
import zipkin.server.EnableZipkinServer;

@EnableZipkinStreamServer
@SpringBootApplication
@EnableDiscoveryClient
public class SpringcloudAppZipkinApplication {
    public static void main(String[] args) {
        SpringApplication.run(SpringcloudAppZipkinApplication.class, args);
    }
}