package bit.camp.com.model.VO.mybatis;

import java.sql.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@Alias("rsrvlistDTO")
@Configuration
public class RsrvlistDTO {
	
	@Bean("getRsrvlistDTO")
	public RsrvlistDTO getRsrvlistDTO() {
		return new RsrvlistDTO();
	}
	
	private int reservationCount;
	private String customerID;
	private String customerName;
	private String roomType;
	private int roomNumber;
	private int roomPerson;
	private Date reservationStartDate;
	private Date reservationFinishDate;
	private String editState;
}
  
