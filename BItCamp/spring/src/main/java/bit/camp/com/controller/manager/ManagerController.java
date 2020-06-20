package bit.camp.com.controller.manager;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bit.camp.com.model.VO.mybatis.Manager;
import bit.camp.com.model.VO.mybatis.Room;
import bit.camp.com.model.VO.mybatis.RsrvlistDTO;
import bit.camp.com.model.dao.ManagerDao;
import bit.camp.com.model.service.manager.ManagerService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	@Autowired
	private ManagerDao managerDao;
	
	//관리자 메인 페이지
	@RequestMapping(value="/admin", method=RequestMethod.POST)
	public String getManager(Model model,RsrvlistDTO RsrvlistDTO,Manager manager,HttpSession session) {
		int result=managerService.adminLogin(manager);
		
		session.setAttribute("adminID", manager);
		if (result==1) {
			model.addAttribute("rsrvlistDTOs", managerService.getAllRsrvlistDTO());
			return "/manager/managerPage";
		}else {
			return "/manager/adminLogin";
		}
	}
	//호텔 예약 리스트
	@RequestMapping(value="/rsrvlist", method=RequestMethod.GET)
	public String getManager1(Model model) {
		model.addAttribute("rsrvlistDTOs", managerService.getAllRsrvlistDTO());
			return "/manager/managerPage";
		
	}	
	
	//객실 변경
		@RequestMapping(value="/roomMng/{reservationCount}/{customerID}/{roomType}/{roomNumber}/{roomPerson}/{reservationStartDate}/{reservationFinishDate}/{editState}"
				, method=RequestMethod.GET)
		public String getManager2(RsrvlistDTO rsrvlistDTO, Model model) {
			model.addAttribute("RsrvlistDTO", rsrvlistDTO);
			return "/manager/roomMng";
	}
		
		@RequestMapping(value="/roomMng", method=RequestMethod.POST)
		public String getManager4(RsrvlistDTO rsrvlistDTO, Model model) {
			log.info("param : "+rsrvlistDTO);
			managerService.updateRsrvlistDTO(rsrvlistDTO);
			model.addAttribute("RsrvlistDTO", rsrvlistDTO);
			List<RsrvlistDTO> rsrvlistDTOs=	managerService.getAllRsrvlistDTO();
			model.addAttribute("rsrvlistDTOs", rsrvlistDTOs);
			return "/manager/managerPage";
			
	}
		
	//관리자 로그인
	@RequestMapping(value="/adminLogin", method=RequestMethod.GET)
	public String managerLogin(Model model) {
		return "/manager/adminLogin";
	}

	//호텔 객실 가격 변경 페이지
	@RequestMapping(value="/productPriceChange")
	public String productPriceChange(Model model) {
		log.info("==================="+ managerService.productPriceChange());
		model.addAttribute("rooms", managerService.productPriceChange());
		
		return "manager/productPriceChange";
	}
	
	//호텔 객실 가격 변경
	@RequestMapping(value="/priceChangeProcess", method=RequestMethod.POST)
	public String priceChangeProcess(Model model, Room room) {
		log.info(room);
		managerDao.changePrice(room);
		log.info(room.getRoomPrice());
		return "redirect:/productPriceChange";
		
	}
}