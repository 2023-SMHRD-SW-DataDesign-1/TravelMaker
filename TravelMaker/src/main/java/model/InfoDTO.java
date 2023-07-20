package model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class InfoDTO {
	int info_num;
	String user_id;
	String info_wr_date;
	String info_cate;
	String info_title;
	String info_content;
	String info_thumb;
	int info_fee;	
}
