package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class ResDTO {
	int res_num;
	int est_num;
	String user_id;
	String res_wr_date;
	String res_content;
	int res_fee;
	int paid;

}
