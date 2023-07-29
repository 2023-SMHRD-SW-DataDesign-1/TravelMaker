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
public class PortDTO {
	int port_num;
	@NonNull String user_id;
	@NonNull String port_content;
	@NonNull String port_title;
}
