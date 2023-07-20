package model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class ResDTO {
	int res_num;
	int est_num;
	String user_id;
	String res_wr_date;
	String res_google;
	String res_content;
	int res_fee;

}
