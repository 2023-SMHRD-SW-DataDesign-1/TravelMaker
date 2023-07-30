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
public class ResDTO {
	int res_num;
	@NonNull int est_num;
	@NonNull String user_id;
	String res_wr_date;
	@NonNull String res_content;
	@NonNull int res_fee;
	int paid;
	@NonNull String res_place;

}
