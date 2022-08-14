package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardBean;
import model.BoardDAO;

@WebServlet("/BoardUpdateProc")
public class BoardUpdateProc extends HttpServlet {


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void reqPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String pass = request.getParameter("pass");
		String inputPass = request.getParameter("password");
		String subject=request.getParameter("subject");
		String content=request.getParameter("content");
		if (pass.equals(inputPass)) {
			BoardDAO bdao = new BoardDAO();
			bdao.updateBoard(num,subject,content);
			request.setAttribute("msg", "게시글 수정이 완료되었습니다.");
			RequestDispatcher dis = request.getRequestDispatcher("BoardListCon");
			dis.forward(request, response);
		}else {
			request.setAttribute("msg", "게시글 수정에 필요한 비밀번호가 맞지 않습니다.");
			RequestDispatcher dis = request.getRequestDispatcher("BoardListCon");
			dis.forward(request, response);
		}
	}
}
