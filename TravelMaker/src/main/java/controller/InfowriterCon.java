package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import command.Command;
import model.InfoDAO;
import model.InfoDTO;
import model.UserDTO;
import oracle.net.ns.SessionAtts;

@WebServlet("/InfowriterCon")
public class InfowriterCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("인포롸이터");

		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		HttpSession session = request.getSession();

		UserDTO udto = (UserDTO) session.getAttribute("info");

		String user_id = udto.getUser_id();
		String info_cate = request.getParameter("info_cate");
		String info_title = request.getParameter("info_title");
		String info_content = request.getParameter("info_content");
		int info_fee = Integer.parseInt(request.getParameter("info_fee"));
		String info_lat = request.getParameter("lat");
		String info_lng = request.getParameter("lng");
		String info_brief = request.getParameter("info_brief");

		System.out.println("아이디 : " + user_id);
		System.out.println("카테고리 : " + info_cate);
		System.out.println("제목 : " + info_title);
		System.out.println("요금 : " + info_fee);
		System.out.println("lat : " + info_lat);
		System.out.println("lng : " + info_lng);

		InfoDAO idao = new InfoDAO();
		int row = idao.upload(new InfoDTO(user_id, info_cate, info_title, info_content, info_fee, info_lat, info_lng, info_brief));

		if (row > 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}

		return "Main.jsp";
	}

}
