package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QxDao;
import domain.qixinpro;

import Services.QXService;

public class deleteqixnpro extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int idqixinpro =Integer.parseInt(request.getParameter("idqixinpro"))  ;
		QXService.deleteqixnpro(idqixinpro);
		response.sendRedirect("selectallqixinpro");
	}	
	
}

