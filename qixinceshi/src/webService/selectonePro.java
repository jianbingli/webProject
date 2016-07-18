package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QxDao;
import domain.filesPro;
import domain.qixinpro;

import Services.QXService;

public class selectonePro extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int idqixinpro =Integer.parseInt(request.getParameter("idqixinpro"));
		List<qixinpro> qixinpro = new QXService().selectoneProbyidqixinpro(idqixinpro);
		request.setAttribute("qixinpro", qixinpro);
		request.getRequestDispatcher("/updateonepro.jsp").forward(request, response);
	}	
	
}

