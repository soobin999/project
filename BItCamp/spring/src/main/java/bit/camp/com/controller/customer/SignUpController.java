package bit.camp.com.controller.customer;

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
public class SignUpController {
	
	@Autowired(required=false)
	private CustomerDao customerDao;
	
	@RequestMapping(value="/signUp")
	public String agreement(HttpSession session) {
		log.info("약관동의 하러 ㄱㄱ");
		session.invalidate();
		return "customer/agreement";
	}

	//회원가입
		@RequestMapping(value="/agreements")
		public String signUp() {
			log.info("약관동의 완료 회원가입하러 ㄱㄱ");
			return "customer/signUp";
		}
		
		@RequestMapping(value="/signUpProcess", method=RequestMethod.POST)
		public String signUpProcess(Customer customer) {
			customerDao.signUp(customer);
			log.info(customer);
			return "customer/login";
		}
		
		////////////////////////////////////////////////////////////////
		
		//아이디 중복 체크
		@RequestMapping(value="/checkID", produces = MediaType.APPLICATION_JSON_UTF8_VALUE )
		@ResponseBody
		public int checkID(@RequestParam("customerID") String customerID) {
			log.info("아이디중복체크");
			log.info(customerID);
			
			return customerDao.checkID(customerID);
		}
		//주민번호 중복 체크
		@RequestMapping(value="/checkSSNumber", produces = MediaType.APPLICATION_JSON_UTF8_VALUE )
	    @ResponseBody
	    public int checkSSNumber(@RequestParam("SSNumber") String SSNumber) {
	       log.info("민번중복체크");
	       log.info(SSNumber);
	       log.info(customerDao.checkSSNumber(SSNumber));
	       
	       return customerDao.checkSSNumber(SSNumber);
	    }
		
		
}
