package controller;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.SendDAO;
import model.SendDTO;
import model.UserDTO;

@WebServlet("/SendCon")
public class SendCon implements Command {
	
	// 날짜를 변환하기 위한 메서드
	private String convertDate(String dateString) {
	    // 원본 날짜 형식을 지정합니다.
	    SimpleDateFormat originalFormat = new SimpleDateFormat("E MMM dd yyyy", Locale.US);
	    // 변환하고자 하는 날짜 형식을 지정합니다.
	    SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy년 M월 d일 E요일");

	    try {
	        // 문자열로 받은 날짜를 Date 객체로 파싱합니다.
	        Date date = originalFormat.parse(dateString);
	        // 원하는 형식의 문자열로 변환합니다.
	        String convertedDate = targetFormat.format(date);
	        return convertedDate;
	    } catch (ParseException e) {
	        e.printStackTrace();
	    }

	    // 변환에 실패하면 원본 값을 그대로 반환합니다.
	    return dateString;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("[SendCon]");

		
		int est_num = 0;
		String send_wr_date = null;
		String send_country = request.getParameter("send_country");
		String send_place = request.getParameter("send_place");
		int send_budget = Integer.parseInt(request.getParameter("send_budget"));
		
		/*
		 * String send_s_date = request.getParameter("send_s_date"); String send_e_date
		 * = request.getParameter("send_e_date");
		 */
		
		 // send_s_date와 send_e_date를 변환합니다.
        String send_s_date = convertDate(request.getParameter("send_s_date"));
        String send_e_date = convertDate(request.getParameter("send_e_date"));
        
		String send_content = request.getParameter("send_content");

		HttpSession session = request.getSession();
		UserDTO info = (UserDTO) session.getAttribute("info");

		System.out.println(info);
		String moveURL;

		if (info == null) {
			System.out.println("비로그인");
			moveURL = "Login.jsp";
			
			
		} else {
			String user_id = info.getUser_id();

			System.out.println(send_s_date);
			System.out.println(send_e_date);
			System.out.println(send_content);

			SendDTO dto = new SendDTO(est_num, user_id, send_wr_date, send_country, send_place, send_e_date,
					send_s_date, send_budget, send_content, 0);

			SendDAO dao = new SendDAO();
			int row = dao.est_send(dto);
			if (row > 0) {
				System.out.println("로그인 / 견적요청 성공");
				moveURL = "Main.jsp";
			} else {

				System.out.println("로그인 / 견적요청 실패");
				moveURL = "Main.jsp";
			}
		}

		return moveURL;
	}

}
