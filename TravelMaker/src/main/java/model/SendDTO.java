package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class SendDTO {
	@NonNull int est_num;
	@NonNull String user_id;
	String send_wr_date;
	String send_country;
	String send_place;
	String send_s_date;
	String send_e_date;
	int send_budget;
	String send_content;
	int checked;
}
