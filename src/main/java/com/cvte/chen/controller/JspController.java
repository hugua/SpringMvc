package com.cvte.chen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by chen on 2017/4/20.
 */
@Controller
public class JspController {
    @RequestMapping(method = RequestMethod.GET,value = "/")
    public String indexHandler(){
        return "login";
    }

    @RequestMapping(method = RequestMethod.GET,value = "/{jspName}")
    public String jspHandler(@PathVariable String jspName){
        return jspName;
    }

    @RequestMapping(method = RequestMethod.GET,value = "/user/{jspName}")
    public String userHandler(@PathVariable String jspName){
        return "/user/"+jspName;
    }

}
