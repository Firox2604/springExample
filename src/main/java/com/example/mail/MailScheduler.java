package com.example.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class MailScheduler {
    private EmailSender emailSender;

    @Autowired
    public MailScheduler(EmailSender emailSender) {
        this.emailSender = emailSender;
    }

    @Scheduled(fixedRate = 15000L)
    public void scheduleSend(){
        final String emailTo = "kirosithera@gmail.com";
        emailSender.sendEmail(emailTo,"safa","safd");
    }
}
