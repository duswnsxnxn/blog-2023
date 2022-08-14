package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;

@WebServlet("/BoardDeleteProc")
public class BoardDeleteProc extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newPass=request.getParameter("password");
		String originPass=request.getParameter("pass");
		int num=Integer.parseInt(request.getParameter("num"));
		if(newPass.equals(originPass)) {
			BoardDAO bdao=new BoardDAO();
			bdao.oneDeleteBoard(num);
			request.setAttribute("msg", "해당 게시글 삭제 완료");
			RequestDispatcher dis=request.getRequestDispatcher("BoardListCon");
			dis.forward(request, response);
		}else {
			request.setAttribute("msg", "해당 게시글 삭제에 필요한 비밀번호 불일치");
			RequestDispatcher dis=request.getRequestDispatcher("BoardListCon");
			dis.forward(request, response);
		}
	}

}
