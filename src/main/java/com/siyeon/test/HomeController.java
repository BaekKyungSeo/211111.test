package com.siyeon.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.siyeon.test.dao.IDao;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/list")
	public String list(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		
		model.addAttribute("list", dao.listDao());
		
		return "list";
	}
	
	@RequestMapping("/memberForm")
	public String memberForm(Model model) {
		return "memberForm";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.delDao(request.getParameter("sId"));
		
		return "redirect:list";
	}
	
	@RequestMapping("/member")
	public String member(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.mbDao(request.getParameter("sName"), request.getParameter("sPhone"), request.getParameter("sAddr"));
		
		return "redirect:list";
	}
	
	@RequestMapping("/modifyForm")
	public String modifyForm(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("modifyForm", dao.modifyFormDao(request.getParameter("sId"), request.getParameter("sName"), request.getParameter("sPhone"), request.getParameter("sAddr")));
		
		return "modifyForm";
	}
	
	@RequestMapping("/modify")
	public String modify(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.modifyFormDao(request.getParameter("sId"), request.getParameter("sName"), request.getParameter("sPhone"), request.getParameter("sAddr"));
		return "redirect:list";
	}
	
}
