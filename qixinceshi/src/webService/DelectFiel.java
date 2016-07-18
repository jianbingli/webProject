package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QxDao;
import domain.filesPro;

import Services.QXService;

public class DelectFiel extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int FileID =Integer.parseInt(request.getParameter("FileID"))  ;
		QXService.DeleteFileSBYFileID(FileID);
		List<filesPro> filesPro = new QXService().selectAllFileName();
		request.setAttribute("filesPro", filesPro);
		request.getRequestDispatcher("/getandsetfiles.jsp").forward(request, response);
	}	
	
}

