package bit.camp.com.controller.customer;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bit.camp.com.model.VO.mybatis.Customer;
import bit.camp.com.model.dao.CustomerDao;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class LoginController {
	
	@Autowired(required=false)
	private CustomerDao customerDao;
	
	//로그인
	@RequestMapping(value="login")
	public String login() {
		log.info("login");
		return "customer/login";
	}
	
	@RequestMapping(value="loginProcess", method=RequestMethod.POST)
	public String loginProcess(Customer customer, HttpSession session, HttpServletResponse response) throws IOException {
		log.info("loginProcess");
		String customerID = customerDao.login(customer);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if (customerID != null) {
			session.setAttribute("customerID", customerID);
			log.info(session.getAttribute("customerID"));
			return "hotel/index";
		}else {
			out.println("<script>alert('입력하신 아이디, 비밀번호를 찾을 수 없습니다'); location.href='login';</script>");
			out.flush();
			out.close();			
		}
		return "";
	}
	
	@RequestMapping(value="logout")
	public String logout(HttpSession session) {
		log.info("logout");
		session.invalidate();
		return "hotel/index";
	}
	
	
	
	
}
