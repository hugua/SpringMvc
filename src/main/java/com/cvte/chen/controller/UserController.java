package com.cvte.chen.controller;

import com.cvte.chen.entity.Usertest;
import com.cvte.chen.service.UsertestService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by chen on 2017/4/9.
 */
//@Controller声明控制器，@SessionAttributes设置自动加入httpsession的变量或者对象
@Controller
@SessionAttributes("usertest")
public class UserController {

    @Resource
    UsertestService usertestService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView loginHandler(  Usertest usertest, HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println(usertest);
        if(usertestService.selectByExample(usertest)){
            ModelAndView view = new ModelAndView("user/index");
            return view;
        }else{
            ModelAndView view = new ModelAndView("login");
            view.addObject("msg","用户名或者密码错误");
            return view;
        }
    }
    @RequestMapping(value = "/register",method = RequestMethod.POST)
//    public ModelAndView registerHandler(String name,String password,HttpServletRequest request){
    public ModelAndView registerHandler(Usertest usertest,HttpServletRequest request){
        usertestService.insert(usertest);
        ModelAndView view = new ModelAndView("user/index");
        return view;
    }
}
