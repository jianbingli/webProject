package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.filesPro;
import domain.qixinpro;
import domain.testUsers;

import Services.QXService;

public class updateours extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		qixinpro qixpro = new qixinpro();	
		qixpro.setIdqixinpro(Integer.parseInt(request.getParameter("proid")));
		qixpro.setProhead(request.getParameter("protouxiang"));	
		qixpro.setProname(request.getParameter("promingzi"));
		qixpro.setPromotto(request.getParameter("promingyan"));
		QXService.updateours(qixpro);
		List<qixinpro> qixinpro = new QXService().selectallqixinpro();
		request.setAttribute("qixinpro", qixinpro);
		request.getRequestDispatcher("/selectallqixinpro.jsp").forward(request, response);
		
	}	
	
}

