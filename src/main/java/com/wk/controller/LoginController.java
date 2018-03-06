package com.wk.controller;

import com.wk.model.TUser;
import com.wk.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by 锴 on 2018/3/3.
 */
@Controller
public class LoginController {
    @Resource()
    private IUserService userService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String login(@ModelAttribute TUser user){
        System.out.println("加载起始页index");
        return "index";
    }

    @RequestMapping(value = "/",method = RequestMethod.POST)
    public String login(TUser user, Model model, HttpSession session){
        TUser usertmp = userService.selectByUsername(user);
        if (usertmp==null){
            System.out.println("用户不存在");
            return "index";
        }
        if (!usertmp.getUserPassword().equals(user.getUserPassword())){
            System.out.println("密码错误");
            return "index";
        }
        session.setAttribute("loginUser",usertmp);
        System.out.println("已经进入密码验证controller");
        return "redirect:web/situation";
    }
}
