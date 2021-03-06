package com.how2java.springboot.web;

import com.how2java.springboot.dao.CostDAO;
import com.how2java.springboot.pojo.Cost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class CostListCotroller  {

    @Autowired
    CostDAO costDAO;

    @RequestMapping(value = "/costList")
    public String clostList(Model model){
        List<Cost> costList = costDAO.findAll();
        model.addAttribute("costList",costList);
        return "index123";
    }

    @RequestMapping(value = "/addCost",method = RequestMethod.POST)
    public String addCost(Cost c){
        costDAO.save(c);
        return "indexyyty";

    }

}
