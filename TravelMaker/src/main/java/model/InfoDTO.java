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
}
