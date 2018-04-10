package com.wk.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/web/update")
public class UpdateController {

    @RequestMapping(method = RequestMethod.GET)
    public String situation(){
        System.out.println("进入updateController");
        return "web/update";
    }
}