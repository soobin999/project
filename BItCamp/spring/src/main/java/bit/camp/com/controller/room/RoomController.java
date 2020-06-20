package bit.camp.com.controller.room;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.camp.com.model.VO.room.ReservationDTO;
import bit.camp.com.model.VO.room.RoomDTO;
import bit.camp.com.model.service.room.RoomService;

@Controller
public class RoomController {
	
	@Autowired
	private RoomService roomService;
	
	@RequestMapping("/")
	public String home(Model model) {
		return "hotel/index";
	}
	
	@RequestMapping(value = "/search",method = RequestMethod.POST)
	public String searchRoom(ReservationDTO reservationDTO , Model model, HttpSession session) {
		List<RoomDTO> roomSearch = roomService.getAvailable(reservationDTO);
		model.addAttribute("search", roomSearch);
		session.setAttribute("reservationDTO", reservationDTO);
		return "room/roomList";
	}
	
	@GetMapping("/reservationRoom/{roomPerson}/{roomPrice}/{reservationStartDate}/{reservationFinishDate}")
	public String reserveRoom(@PathVariable("roomPerson") int roomPerson,
							  @PathVariable("roomPrice") int roomPrice, 
							  @PathVariable("reservationStartDate") Date reservationStartDate, 
							  @PathVariable("reservationFinishDate") Date reservationFinishDate, Model model) {
		RoomDTO room = roomService.getOneRoom(roomPerson);
		int totalAmount = roomService.totalAmount(reservationStartDate, reservationFinishDate, roomPrice);
		model.addAttribute("room", room);
		model.addAttribute("totalAmount", totalAmount);
		return "room/roomReservation";
	}
}