package com.how2java.springboot.web;

import com.how2java.springboot.mapper.C123Mapper;
import com.how2java.springboot.pojo.C123;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.PageRequest;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.domain.Sort;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.Request;


import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class CategoryController {
//    @Autowired
//    CategoryDAO categoryDAO;

    @Autowired
    C123Mapper c123Mapper;

//    @RequestMapping(name = "/listCategory")
//    public String listCategory(Model m, @RequestParam(value="start",defaultValue = "0") int start,  @RequestParam(value = "size",defaultValue = "2") int size) throws Exception {
//        start =start>0 ? start : 0;
//        size = size>0 ? size : 2;
//        Sort sort = new Sort(Sort.Direction.DESC,"id");
//        Pageable pageable = new PageRequest(start, size, sort);
//        Page<Category> page = categoryDAO.findAll(pageable);
//
//        System.out.println(page.getNumber());
//        System.out.println(page.getTotalElements());
//        System.out.println(page.getContent());
//
//        m.addAttribute("page", page);
//        return "listCategory";
//    }
//
//    @RequestMapping(value = "/addCategory")
//    public String addCategory(Category c) throws Exception {
//        categoryDAO.save(c);
//        return "redirect:listCategory";
//    }
//
//    @RequestMapping(value = "/deleteCategory")
//    public String deleteCategory(Category c) throws Exception{
//        categoryDAO.delete(c);
//        return "redirect:listCategory";
//    }
//
//    @RequestMapping(value = "updateCategory")
//    public String updateCategory(Category c) throws Exception{
//        categoryDAO.save(c);
//        return "forward:listCategory";
//    }
//
//    @RequestMapping(value = "/editCategory")
//    public String editCategory(int id,Model m){
//        Category c = categoryDAO.getOne(id);
//        m.addAttribute("category",c);
//        return "editCategory";
//    }

    @RequestMapping(value = "/listC123")
    public String listC123(Model model){
        List<C123> c123s = c123Mapper.findAll();
        model.addAttribute("c123s",c123s);
        return "listC123";
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
