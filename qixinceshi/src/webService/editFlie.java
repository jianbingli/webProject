package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.filesPro;

import Services.QXService;

public class editFlie extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		filesPro filp = new filesPro();	
		filp.setFileName(request.getParameter("FileName"));	
		filp.setFileType(request.getParameter("FileType"));	
		filp.setFileSize(Integer.parseInt(request.getParameter("FileSize")));
		filp.setFileInfro(request.getParameter("FileInfro"));
		QXService.createFile(filp);
		response.sendRedirect("selectALLfile");
		
//		List<filesPro> filesPro = new QXService().selectAllFileName();
//		request.setAttribute("filesPro", filesPro);
//		request.getRequestDispatcher("/getandsetfiles.jsp").forward(request, response);
//		
//		
	}	
	
}

