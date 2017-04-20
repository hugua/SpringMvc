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
    @RequestMapping(method = RequestMethod.GET,value = "/{jspName}")
    public String jspHandler(@PathVariable String jspName){
        return jspName;
    }
}
