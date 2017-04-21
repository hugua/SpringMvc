package com.cvte.chen.controller;

import com.cvte.chen.entity.Usertest;
import com.cvte.chen.service.UsertestService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by chen on 2017/4/9.
 */
//@Controller声明控制器，@SessionAttributes设置自动加入httpsession的变量或者对象
@Controller
@SessionAttributes("usertest")
@RequestMapping("/user")
public class UserController {

    @Resource
    UsertestService usertestService;


    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public Object loginHandler( Usertest usertest, HttpServletRequest request, HttpServletResponse response) throws Exception {
        if(usertestService.selectByExample(usertest)){
           return 1;
        }else{
           return 2;
        }
    }
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    @ResponseBody
    public Object registerHandler(Usertest usertest,HttpServletRequest request){
        usertestService.insert(usertest);
        return "success";
    }

    @RequestMapping(value = "/user/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Object getbByid(@PathVariable int id, HttpServletRequest request){
        System.out.println("getByid" + " " + id);
        Usertest usertest = new Usertest();
        return usertest;
    }



    @RequestMapping(value = "/user/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public Object putByid(@PathVariable int id, HttpServletRequest request,Usertest usertest){
        System.out.println(usertest);
        Usertest newUser = new Usertest();
        return usertest;
    }

    @RequestMapping(value = "/user/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public Object deleteByid(@PathVariable int id, HttpServletRequest request){
        System.out.println("deleteByid" + " " + id);
        return "success";
    }

    @RequestMapping(value = "/get",method = RequestMethod.GET   )
    @ResponseBody
    public Object get(HttpServletRequest request){
        List<Usertest> usertestList = usertestService.selectAll();
        return  usertestList;
    }


    @RequestMapping(value = "/post",method = RequestMethod.POST)
    @ResponseBody
    public Object postUser(Usertest usertest,HttpServletRequest request){
        System.out.println("postUser" +" " + usertest.toString());
        return "success";
    }
}
