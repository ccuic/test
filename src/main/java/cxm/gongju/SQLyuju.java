package cxm.gongju;

import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/SQLyuju")
public class SQLyuju extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		String name=req.getParameter("request_id");
		PrintWriter  out=resp.getWriter();
		String strqian="grep --color=auto -C 5 \'";
		String strHou="\' catalina.out.";
		String strRi= new SimpleDateFormat("yyyy-MM-dd").format(new Date()).toString();
		String strResult=strqian+name+strHou+strRi;
		req.setAttribute("result",strResult);
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
}