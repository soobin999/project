package bit.camp.com.model.service.manager;

import java.util.List;

import bit.camp.com.model.VO.mybatis.Manager;
import bit.camp.com.model.VO.mybatis.Room;
import bit.camp.com.model.VO.mybatis.RsrvlistDTO;

public interface ManagerService {
	List<RsrvlistDTO> getAllRsrvlistDTO();
	// RsrvlistDTO selectRsrvlistDTO(RsrvlistDTO rsrvlistDTO);

	void updateRsrvlistDTO(RsrvlistDTO rsrvlistDTO);

	int adminLogin(Manager manager);
	// List<Room> roomPrice();

	List<Room> productPriceChange();

	void changePrice();
}
