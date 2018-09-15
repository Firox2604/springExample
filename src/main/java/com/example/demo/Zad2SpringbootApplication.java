package com.example.demo;

import com.example.mail.EmailSender;
import com.example.repository.UserRepository;
import com.example.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication(scanBasePackages = {"com.example"})
@EntityScan("com.example")
//@EnableScheduling
@EnableJpaRepositories(basePackages = {"com.example.repository"})
public class Zad2SpringbootApplication implements CommandLineRunner {
    private Logger logger = LoggerFactory.getLogger(Zad2SpringbootApplication.class);
    @Autowired
    private EmailSender emailSender;

    @Autowired
    private UserService userService;

    public static void main(String[] args) {
        SpringApplication.run(Zad2SpringbootApplication.class, args);

    }
    @Override
    public void run(String... args)throws Exception{
        //emailSender.sendEmail("kirosithera@gmail.com","test","witam");
        logger.info("afs");
        logger.info(userService.findByLoginAndLastname("kowal","kowalski").toString());
        System.out.println(userService.findByLoginAndLastname("kowal","kowalski").toString());

    }
}
