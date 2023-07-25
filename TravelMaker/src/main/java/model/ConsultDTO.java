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
public class ConsultDTO {
	int cons_num;
	@NonNull int est_num;
	@NonNull String user_id;
	String cons_wr_date;
	@NonNull String cons_lat;
	@NonNull String cons_lng;
	@NonNull String cons_content;

}
