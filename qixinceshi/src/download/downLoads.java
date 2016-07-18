package download;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.QXService;

import updownLoad.DownLoadUtils;
import dao.QxDao;

import dao.QxDao;
import domain.filesPro;
public class downLoads extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			int FileID =Integer.parseInt(request.getParameter("FileID"));
			QxDao.UpdataFileDownSixe(FileID);
			List<filesPro> filesP = QxDao.selectFileNameBYFileID(FileID);
			String path = null;
			for (filesPro fp : filesP) {	
				path = "E:/QXFiles/"+fp.getFileName()+"."+fp.getFileType();
			}
			File f = new File(path);
			if (f.exists()) {
				// 下载 统一字节流
				
				response.setHeader(
						"Content-Disposition",
						"attachment;filename="
								+ DownLoadUtils.getFileName(path,
										request.getHeader("user-agent")));

				response.setContentType(this.getServletContext().getMimeType(path));

				// 输出流 不能new
				InputStream in = new FileInputStream(f);
				int b = 0;
				byte bytes[] = new byte[1024 * 8];
				while ((b = in.read(bytes)) != -1) {
					response.getOutputStream().write(bytes, 0, b);
				}
				in.close();
				
				
			} else {
				// 数据库存在 服务器资源不存在... 数据库删除该条记录 跳转到查询的servlet 即可
				// new ResourceService().deleteResourceById(r.getId());
				throw new RuntimeException("您访问资源不存在!");
			}
//			if(f.exists()){
//				QxDao.UpdataFileDownSixe(FileID);
//				List<filesPro> filesPro = new QXService().selectAllFileName();
//				request.setAttribute("filesPro", filesPro);
//				request.getRequestDispatcher("/AllFiles.jsp").forward(request, response);
//			}
			
		
	}

}
