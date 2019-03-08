package com.how2java.springboot.web;
import java.text.DateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class HelloController {
 
    @RequestMapping("/index")
    public String hello(Model m) throws Exception {
        if (true) {
            throw new Exception("自定义的异常信息！！！");
        }
    	m.addAttribute("now", DateFormat.getDateTimeInstance().format(new Date()));
    	m.addAttribute("test","test");
        return "index";
    }
}