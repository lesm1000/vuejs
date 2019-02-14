package com.test.vuejs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BaseController {

    @RequestMapping("test")
    public ModelAndView test() {
        System.out.print("hello test");
        ModelAndView model = new ModelAndView();
        model.setViewName("test");
        return model;
    }
}
