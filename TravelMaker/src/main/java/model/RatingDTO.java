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
public class RatingDTO {
	int rating_num;
	@NonNull String user_id;
	@NonNull int rating;
	@NonNull String rate_user_id;
	
	public RatingDTO(String user_id, String rate_user_id) {
		super();
		this.user_id = user_id;
		this.rate_user_id = rate_user_id;
	}
	
	

}
