package model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class PortDTO {
	int port_num;
	String user_id;
	String port_img;
	String port_content;
}
