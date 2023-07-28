package controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import command.Command;
import model.PicDTO;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/UploadpicCon")
public class UploadpicCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("업로드콘 진입");

		String savepath = request.getServletContext().getRealPath("img");
		System.out.println(savepath);

		int maxSize = 10 * 1024 * 1024;

		String encoding = "UTF-8";

		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, savepath, maxSize, encoding, rename);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String user_id = multi.getParameter("user_id");
		String filename = multi.getFilesystemName("profileImage");

		System.out.println("user_id : " + user_id);
		System.out.println("filename : " + filename);

		UserDAO udao = new UserDAO();
		int row = udao.uploadPic(new PicDTO(filename, user_id));
		
		UserDTO info = udao.userInfo(user_id);
		String moveURL = "" ;

		if (row > 0) {
			System.out.println("업로드 성공");
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			moveURL = "MyPage_normal.jsp?upload_success=true";
		} else {
			System.out.println("업로드 실패");
			moveURL = "MyPage_normal.jsp";
		}
		

		return moveURL;
	}

}
