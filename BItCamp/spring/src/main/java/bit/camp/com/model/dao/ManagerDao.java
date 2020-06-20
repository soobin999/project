package bit.camp.com.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import bit.camp.com.model.VO.mybatis.Manager;
import bit.camp.com.model.VO.mybatis.Room;
import bit.camp.com.model.VO.mybatis.RsrvlistDTO;

@Service
public interface ManagerDao {
	List<RsrvlistDTO> getAllRsrvlistDTO();
	RsrvlistDTO select( RsrvlistDTO rsrvlistDTO);
//	RsrvlistDTO select(@Param("rsrvlistDTO") RsrvlistDTO rsrvlistDTO);
//	 RsrvlistDTO select(@Param("rsrvlistDto") RsrvlistDTO rsrvlistDTO);

	List <String> getAllRoomtype();
	void updateRsrvlistDTO(@Param("rsrvlistDTO") RsrvlistDTO rsrvlistDTO);

	int adminLogin(Manager manager);
	// List<Room> roomPrice();

	List<Room> productPriceChange();

	void changePrice(Room room);// 가격수정
	
	
	
	
}
