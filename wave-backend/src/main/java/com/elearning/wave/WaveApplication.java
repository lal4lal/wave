package com.elearning.wave;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;

@SpringBootApplication
@CrossOrigin
public class WaveApplication {

	public static void main(String[] args) {
		SpringApplication.run(WaveApplication.class, args);
	}

}
