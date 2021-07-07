package com.engulf.controller;

import com.engulf.pojo.Champion;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RestController
public class AjaxController {
    @GetMapping("/a1")
    public String test(){
        return "hello";
    }

    @RequestMapping("/func1")
    public void func1(String user, HttpServletResponse response) throws IOException {
        System.out.println("func1:param=>" + user);
        if("kindred".equals(user)){
            response.getWriter().write("kindred");
        }else {
            response.getWriter().write("Gnar?");
        }
    }

    @RequestMapping("/func2")
    public List<Champion> func2(){
        List<Champion> champions = new ArrayList<Champion>();

        //添加数据
        champions.add(new Champion(1,"Kindred",1));
        champions.add(new Champion(2,"Gnar",2));
        champions.add(new Champion(1,"Neeko",3));

        return champions;
    }

    @RequestMapping("/func3")
    public String func3(String username,String psw){
        String msg = "";
        if(username != null){
            if("admin".equals(username)){
                msg = "OK";
            }else {
                msg = "False";
            }
        }

        if(psw != null){
            if("123456".equals(psw)){
                msg = "密码OK";
            }else {
                msg = "密码False";
            }
        }
        return msg;
    }
}
