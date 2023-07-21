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

		String info_title = request.getParameter("boardtitle");
		String user_id = request.getParameter("username");
		String info_content = request.getParameter("boardcontents");

		System.out.println(info_title);
		System.out.println(user_id);
		System.out.println(info_content);

		InfoDAO idao = new InfoDAO();
//		int row = idao.upload(new InfoDTO(user_id, info_title, info_content));

		InfoDTO idto = new InfoDTO();
		idto = idao.showInfo(user_id);

		HttpSession session = request.getSession();
		session.setAttribute("info_title", info_title);
		session.setAttribute("user_id", user_id);
		session.setAttribute("info_content", info_content);

//		if (row > 0) {
//			System.out.println("성공");
//		} else {
//			System.out.println("실패");
//		}

		return "ShowInfo.jsp";
	}

}
