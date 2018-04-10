package com.wk.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/web/extend")
public class ExtendController {

    @RequestMapping(method = RequestMethod.GET)
    public String situation(){
        System.out.println("进入extendController");
        return "web/extend";
    }
}