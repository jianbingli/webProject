package dao;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import ll.cust.utils.JDBCUtils;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import webService.getUrlWeb;



import domain.analled;
import domain.filesPro;
import domain.qixinpro;
import domain.testUsers;
import domain.testcase;





public class QxDao{
	public List<testcase> selectxxName(String biaoming) {
		// TODO Auto-generated method stub
				try {

					String sql = "select * from qinxin."+biaoming;
					QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
					return runner.query(sql, new BeanListHandler<testcase>(
							testcase.class));

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("asdjk");
				}
	}
	public void insertFiles(filesPro fp) {
		try {
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "insert into qixinapp.qxfiles(FileName,FileType,FileSize,FileInfro,FileCreaDat,FileDownTimes) values(?,?,?,?,?,0)";
			runner.update(sql, fp.getFileName(),fp.getFileType(),fp.getFileSize(),fp.getFileInfro(),fp.getFileCreaDat());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("jjj");
		}
	}

	public List<filesPro> selectFileName(String fileNames) {
		// TODO Auto-generated method stub
				try {

					String sql = "select * from qixinapp.qxfiles where FileName = '"+fileNames+"';";
					QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
					return runner.query(sql, new BeanListHandler<filesPro>(
							filesPro.class));

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("asdjk");
				}
	}

	public List<filesPro> selectAllFileName() {
		// TODO Auto-generated method stub
		try {

			String sql = "select * from qixinapp.qxfiles;";
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			return runner.query(sql, new BeanListHandler<filesPro>(
					filesPro.class));

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("asdjk");
		}
	}

	public static List<filesPro> selectFileNameBYFileID(int fileID) {
		// TODO Auto-generated method stub
		try {

			String sql = "select * from qixinapp.qxfiles where FileID = "+fileID+";";
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			return runner.query(sql, new BeanListHandler<filesPro>(
					filesPro.class));

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("asdjk");
		}
	}

	public static void DeleteFileSBYFileID(int fileID) {
		// TODO Auto-generated method stub
		try {
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "delete  from qixinapp.qxfiles where FileID = ?";
			runner.update(sql, fileID);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("jjj");
		}
	}

	public static void UpdataFileDownSixe(int fileID) {
		// TODO Auto-generated method stub
		try {
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "update qixinapp.qxfiles set FileDownTimes = (FileDownTimes + 1) where FileID = ?;";
			System.out.println(sql);
			runner.update(sql, fileID);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("jjj");
		}
	}

	public List<testUsers> selecttestUsers() {
		// TODO Auto-generated method stub
				try {

					String sql = "select * from qixinapp.testuser;";
					QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
					return runner.query(sql, new BeanListHandler<testUsers>(
							testUsers.class));

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("asdjk");
				}
	}

	public List<testUsers> selectTestuser(String iphone) {
		// TODO Auto-generated method stub
		try {

			String sql = "select * from qixinapp.testuser where userPhone = '"+ iphone +"' ;";
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			return runner.query(sql, new BeanListHandler<testUsers>(
					testUsers.class));

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("asdjk");
		}
	}

	public void addUser(testUsers tu) {
		// TODO Auto-generated method stub
		try {
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "insert into qixinapp.testuser(userName,userPhone,userPassword) values(?,?,?)";
			runner.update(sql, tu.getUserName(),tu.getUserPhone(),tu.getUserPassword());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("jjj");
		}
	}

	public List<analled> selectAllanalleds() {
		// TODO Auto-generated method stub
				try {

					String sql = "select * from qixinapp.adnroidalledtion order by idadnroidalledtion desc;";
					QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
					return runner.query(sql, new BeanListHandler<analled>(
							analled.class));

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("asdjk");
				}
	}

	public List<analled> selectAndroidrdtionName(String edname) {
		// TODO Auto-generated method stub
				try {

					String sql = "select * from qixinapp.adnroidalledtion where edname = '"+edname+"';";
					QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
					return runner.query(sql, new BeanListHandler<analled>(
							analled.class));

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("asdjk");
				}
	}

	public void addandroidedtion(analled tu) {
		// TODO Auto-generated method stub
				try {
					QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
					String sql = "insert into qixinapp.adnroidalledtion(edname,edurl) values(?,?)";
					runner.update(sql, tu.getEdname(),tu.getEdurl());
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("jjj");
				}
	}
	
	public List<qixinpro> selectQixinpros() {
		// TODO Auto-generated method stub
				try {

					String sql = "select * from qixinapp.qixinpro";
					QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
					return runner.query(sql, new BeanListHandler<qixinpro>(
							qixinpro.class));

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("asdjk");
				}
	}

	public List<qixinpro> selectoneProbyidqixinpro(int idqixinpro) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		try {

			String sql = "select * from qixinapp.qixinpro where idqixinpro ="+idqixinpro;
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			return runner.query(sql, new BeanListHandler<qixinpro>(
					qixinpro.class));

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("asdjk");
		}
	}
	
	public static List<String> getFilePathList() { 
		String getFile = QxDao.class.getResource ("").getFile();
		int index=getFile.indexOf("WEB-INF");
		File file = new File(getFile.substring(0,index)+"QQ");
	    List<String> filePathList = new ArrayList<String>(); 
	    File[] list = file.listFiles();  
	    if (list != null) {  
	        for (File file2 : list) {  
	            if (file2.isDirectory()) {  
	                //filePathList.addAll(getFilePathList(file2));  
	            } else {  
	                filePathList.add(file2.getPath().substring(file2.getPath().lastIndexOf("\\")+1));  
	                
	            }  
	        }  
	    }  
	    return filePathList;  
	}

	public void updateours(qixinpro qp) {
		// TODO Auto-generated method stub
				try {
					QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
					String sql = "update qixinapp.qixinpro set proname = ? , prohead=? , promotto =?  where idqixinpro = ?;";
					runner.update(sql, qp.getProname(),qp.getProhead(),qp.getPromotto(),qp.getIdqixinpro());
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					throw new RuntimeException("jjj");
				}
		
	}

	public void insterours(qixinpro qp) {
		// TODO Auto-generated method stub
		try {
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "insert into qixinapp.qixinpro(proname,prohead,promotto) values(?,?,?);";
			runner.update(sql, qp.getProname(),qp.getProhead(),qp.getPromotto());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("jjj");
		}
	}

	public void deleteqixnpro(int idqixinpro) {
		// TODO Auto-generated method stub
		try {
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "delete  from qixinapp.qixinpro where idqixinpro = ?";
			runner.update(sql, idqixinpro);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("jjj");
		}
	}

	public void deletandroidedtion(int idadnroidalledtion) {
		// TODO Auto-generated method stub
		try {
			QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "delete  from qixinapp.adnroidalledtion where idadnroidalledtion = ?";
			runner.update(sql, idadnroidalledtion);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("jjj");
		}
	}

	public void deletetestuser(int userID) {
		// TODO Auto-generated method stub
				try {
					QueryRunner runner = new QueryRunner(JDBCUtils.getDataSource());
					String sql = "delete  from qixinapp.testuser where userID = ?";
					runner.update(sql, userID);
				} catch (SQLException e) {
					// TODO Auto-generated catch blockSS
					e.printStackTrace();
					throw new RuntimeException("jjj");
				}
	}  
	
}









