package com.cvte.chen.controller;

import com.cvte.chen.dao.UserMapper;
import com.cvte.chen.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by chen on 2017/4/16.
 */
@Controller
@RequestMapping("/register")
public class RegisterController {
    @Resource
    UserMapper userDao;
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView showView(){
        ModelAndView view = new ModelAndView("register");
        return view;
    }
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView register(HttpServletResponse response, HttpServletRequest request,User user){
        System.out.println(user);
        user.setRole(2);
        userDao.insert(user);
        HttpSession session = request.getSession();
        session.setAttribute("username",user.getUsername());
        session.setAttribute("role",2);
        ModelAndView view = new ModelAndView("/user/index");
        return view;
    }
}
