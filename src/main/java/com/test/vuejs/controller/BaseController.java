package com.test.vuejs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {

    @RequestMapping("test")
    public void test(){
        System.out.print("hello test");
    }
}
