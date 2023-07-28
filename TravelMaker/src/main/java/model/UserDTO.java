package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class UserDTO {
	@NonNull
	String user_id;
	@NonNull
	String user_type;
	@NonNull
	String user_name;
	@NonNull
	String user_email;
	@NonNull
	String user_pw;
	int user_cash;
	String user_pic;
	String act_area;

	public UserDTO(String user_id, String user_pw) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
	}

	public UserDTO(String user_id, String user_pic) {
		super();
		this.user_id = user_id;
		this.user_pic = user_pic;
	}
	

	
	

}
