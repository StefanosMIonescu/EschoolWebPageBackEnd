package com.assigment2sprinint.demo;



import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class Assignment2springtestintApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(Assignment2springtestintApplication.class, args);
	}

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(Assignment2springtestintApplication.class);
    }
        
        

}
