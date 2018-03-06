package com.wk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by 锴 on 2018/3/4.
 */
@Controller
@RequestMapping("/web/situation")
public class SituationController {
    @RequestMapping(method = RequestMethod.GET)
    public String situation(){
        System.out.println("进入situationController");
        return "web/situation";
    }
}
