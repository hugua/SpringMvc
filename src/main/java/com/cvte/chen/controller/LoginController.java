package com.cvte.chen.controller;

import com.cvte.chen.entity.User;
import com.cvte.chen.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by chen on 2017/4/9.
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @Resource
    UserService userService;

    @RequestMapping
    public ModelAndView handleRequest(User user, HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView view = null;
        System.out.println(user);
        HttpSession session = request.getSession();
        if(userService.selectByExample(user)){
            //登录成功
            session.setAttribute("role",user.getRole());
            session.setAttribute("username",user.getUsername());
            if(user.getRole() == 2){
                //普通用户登录
                view = new ModelAndView("/user/index");

            }else{
                //管理员登录
                view = new ModelAndView("/man/index");
            }
        }else{
            //登录失败
            view = new ModelAndView("login");
            view.addObject("msg","用户名或者密码错误");
        }


//        UserT user = service.selectByPrimaryKey(1);
//        String name = user.getUserName();

        return view;
    }
}
