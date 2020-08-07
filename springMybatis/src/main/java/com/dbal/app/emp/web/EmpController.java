package com.dbal.app.emp.web;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dbal.app.emp.service.EmpService;
import com.dbal.app.model.EmpVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class EmpController {

    private static final Logger logger = LoggerFactory.getLogger(EmpController.class);

    @Autowired
    EmpService empService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
        logger.info("Welcome home! The client locale is {}.", locale);

        model.addAttribute("serverTime", new Date());

        return "home";
    }

    @RequestMapping(value = "/emp", method = RequestMethod.GET)
    public String emp(Locale locale, Model model, EmpVO empVO) {

        model.addAttribute("emp", empService.getEmp(empVO));

        return "emp/emp";
    }
    
    @RequestMapping("bookInsertForm")
    public String insertPointForm(Model model, EmpVO empVO) {

       return "emp/bookInsertForm";
    }
    
    @RequestMapping("bookInsert")
    public String insertPoint(Model model, EmpVO empVO) {
       
    	empService.bookInsert(empVO);
       return "emp/bookInsertForm";
    }   
    
	@RequestMapping("getBookList")
	public String getBookList(EmpVO empVO, Model model) {
		
		model.addAttribute("bookList",empService.getBookList(empVO));
		return "emp/getBookList";
	}
	
	@RequestMapping("checkStatus")
	public String checkStatus(EmpVO empVO, Model model) {		
		model.addAttribute("checkList",empService.checkStatus(empVO));
		return "emp/checkStatus";
	}
}
    
