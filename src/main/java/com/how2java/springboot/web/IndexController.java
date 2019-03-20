package com.how2java.springboot.web;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.how2java.springboot.dao.InboxDAO;
import com.how2java.springboot.pojo.Inbox;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {

    @Autowired
    InboxDAO inboxDAO;


    @RequestMapping(value = "/")
    public String index(Model m){
        return "index";
    }

    @RequestMapping(value = "/inbox")
    public String inboxList(Model model){
        return "inbox";
    }

    @RequestMapping(value = "/getInboxList")
    @ResponseBody
    public Map<String, Object> getInboxList(){
        List<Inbox> inboxList = inboxDAO.findAll();
        JSONArray array= JSONArray.parseArray(JSON.toJSONString(inboxList));
        Map<String, Object> result = new HashMap<>();
        result.put("code", 0);
        result.put("msg", "");
        result.put("count", inboxList.size());
        result.put("data", array);
        return result;
    }

    @RequestMapping(value = "createInbox")
    public String createInbox(Model model){
        return "createInbox";
    }

    @RequestMapping(value = "/tomorrowToDo")
    public String tomorrowToDo(Model model){
        return "tomorrowToDo";
    }

    @RequestMapping(value = "/upload",method = RequestMethod.POST)
    public String upload(HttpServletRequest request, @RequestParam("file") MultipartFile file,Model model){
        String pathName = file.getOriginalFilename();
        String[] fileNames = pathName.split("\\\\");

        String fileName = fileNames[fileNames.length-1];
        String newFileName = System.currentTimeMillis() + fileName;
        String destFileName = request.getServletContext().getRealPath("") + "uploaded" + File.separator + newFileName;
        File destFile = new File(destFileName);

        destFile.getParentFile().mkdirs();
        try {
            file.transferTo(destFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(destFileName);
        System.out.println(fileName);
        model.addAttribute("fileName",destFileName);

        return "showImage";
    }

    @RequestMapping(value = "uploadPage")
    public String uploadPage(){
        return "upload";
    }

}
