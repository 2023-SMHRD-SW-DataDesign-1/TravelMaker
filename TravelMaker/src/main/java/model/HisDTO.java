package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class HisDTO {
	int his_num;
	String user_id;
	int est_num;
	int res_num;
	int info_num;
	int trade_fee;
	String trade_cate;
}
