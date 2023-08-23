package com.aplexy.cicdtest.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
//@RequestMapping("/cicd")
public class TestController {

    @GetMapping("/test")
    public String testUrl(){
        System.out.println ("Passed the stage");
        return "Successfully created a CICD pipeline for a VPS";
    }
}
