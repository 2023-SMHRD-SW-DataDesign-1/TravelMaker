package model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class HisDTO {
	int his_num;
	String user_id;
	int est_num;
	int res_num;
	int info_num;
	int trade_fee;
	String trade_cate;
}
