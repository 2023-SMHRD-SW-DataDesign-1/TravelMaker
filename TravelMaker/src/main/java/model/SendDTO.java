package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
public class SendDTO {
	int est_num;
	String user_id;
	String send_wr_date;
	String send_country;
	String send_place;
	String send_s_date;
	String send_e_date;
	int send_budget;
	String send_content;
}
