package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class SendDTO {
	int est_num;
	String user_id;
	String send_wr_date;
	@NonNull String send_country;
	@NonNull String send_place;
	@NonNull int send_budget;
	@NonNull String send_s_date;
	@NonNull String send_e_date;
	@NonNull String send_content;
}
