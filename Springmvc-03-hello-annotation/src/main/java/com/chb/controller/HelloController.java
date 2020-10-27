package com.chb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
    //@RestController的话，不会通过视图解析器 
    @RequestMapping("/h1")
    public String test1(Model model){
        //封装数据
        model.addAttribute("msg","HelloSpringMVC!");
     return "hello";
    }
}
