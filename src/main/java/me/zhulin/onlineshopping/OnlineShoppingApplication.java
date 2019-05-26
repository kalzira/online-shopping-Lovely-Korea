package me.zhulin.onlineshopping;

import me.zhulin.onlineshopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
@SpringBootApplication
public class OnlineShoppingApplication {
	@Autowired
	ProductService productService;
	// Spring Boot 5.0 Requirement
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();   // 使用 BCrypt 加密
	}

	public static void main(String[] args) {
		SpringApplication.run(OnlineShoppingApplication.class, args);
	}
}
