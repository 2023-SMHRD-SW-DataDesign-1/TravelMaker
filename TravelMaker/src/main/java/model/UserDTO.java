package model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class UserDTO {
	String user_id;
	String user_type;
	String user_name;
	String user_email;
	String user_pw;
	int user_cash;
	String user_pic;
	String act_area;

}
