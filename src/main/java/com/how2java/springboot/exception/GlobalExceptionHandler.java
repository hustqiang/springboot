package com.how2java.springboot.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(value = Exception.class)
    public ModelAndView defaultErrorHandler(HttpServletRequest request, Exception e) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("Exception",e);
        modelAndView.addObject("url",request.getRequestURL());
        modelAndView.setViewName("errorPage");
        return modelAndView;
    }
}
