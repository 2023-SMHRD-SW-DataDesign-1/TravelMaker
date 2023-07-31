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
public class InfoDTO {
	int info_num;
	@NonNull String user_id;
	String info_wr_date;
	@NonNull String info_cate;
	@NonNull String info_title;
	@NonNull String info_content;
	String info_thumb;
	@NonNull int info_fee;
	@NonNull String info_lat;
	@NonNull String info_lng;
	@NonNull String info_brief;
	
	
	public InfoDTO(String user_id, int info_num) {
		super();
		this.info_num = info_num;
		this.user_id = user_id;
	}
	
	public InfoDTO(int info_num, String user_id, String info_cate) {
		super();
		this.info_num = info_num;
		this.user_id = user_id;
		this.info_cate = info_cate;
	}
	
	
}
