package com.port.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.port.service.InterPortService;

@Controller
public class PortController {
	
	@Autowired
	InterPortService service;
	
	@RequestMapping(value="/portfolio.somi")
	public ModelAndView portfolio(HttpServletRequest request, ModelAndView mav) {
		
		mav.setViewName("main");
		
		return mav;
	}
	
	@RequestMapping(value="/semiImgPopUP.somi")
	public ModelAndView semiImgPopUP(HttpServletRequest request, ModelAndView mav) {
		
		String imgNo = request.getParameter("imgNo");
		
		mav.addObject("imgNo", imgNo);
		mav.setViewName("semiImgPopUP");
		
		return mav;
	}
	
	@RequestMapping(value="/finalImgPopUP.somi")
	public ModelAndView finalImgPopUP(HttpServletRequest request, ModelAndView mav) {
		
		String imgNo = request.getParameter("imgNo");
		
		mav.addObject("imgNo", imgNo);
		mav.setViewName("finalImgPopUP");
		
		return mav;
	}

}
