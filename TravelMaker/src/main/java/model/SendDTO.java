package model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class SendDTO {
	int est_num;
	String user_id;
	String send_wr_date;
	String send_place;
	String send_date;
	int send_budget;
	String send_content;
	
}
