package Services;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.sound.midi.Patch;

import domain.analled;
import domain.filesPro;
import domain.qixinpro;
import domain.testUsers;
import dao.QxDao;;
public class QXService {
		public static void createFile(filesPro filp) {
			String  path  = "E:/QXFiles/"+filp.getFileName()+"."+filp.getFileType();
			File fileE = new File("E:/QXFiles/");
			if(!fileE.exists()){
				fileE.mkdirs();
			}
			File file = new File(path); // 日志文件在手机卡中的路径  
			try {
				file.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			while (file.length()<filp.getFileSize()) {
				writeLogtoFile(path,filp.getFileInfro());
			}
			filp.setFileSize((int) file.length());
			filp.setFileCreaDat(getNowTime());
			new QxDao().insertFiles(filp);
		}
		
		 public static void writeLogtoFile(String  path,String tag) {// 新建或打开日志文件  
		    	File file = new File(path); // 日志文件在手机卡中的路径  
		            try {  
		                FileWriter filerWriter = new FileWriter(file, true);//后面这个参数代表是不是要接上文件中原来的数据，不进行覆盖  
		                BufferedWriter bufWriter = new BufferedWriter(filerWriter);  
		                bufWriter.write(tag);  
		                //bufWriter.newLine();  
		                bufWriter.close();  
		                filerWriter.close();  
		            } catch (IOException e) {  
		                // TODO Auto-generated catch block  
		                e.printStackTrace();  
		            }
		            
		    	//} 
		    } 
		 
		//获取当前系统时间  
		    public static String getNowTime(){  
				SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");  
		        Date   nowDate   =   new   Date();       
		        String  str= formatDate.format(nowDate);     
		        return str;  
		    }

			public List<filesPro> selectFileName(String fileNames) {
				// TODO Auto-generated method stub
				return new QxDao().selectFileName(fileNames);
			}

			public List<filesPro> selectAllFileName() {
				// TODO Auto-generated method stub
				return new QxDao().selectAllFileName();
			}

			public static void DeleteFileSBYFileID(int fileID) {
				// TODO Auto-generated method stub
				List<filesPro> filesP = QxDao.selectFileNameBYFileID(fileID);
				if(!filesP.isEmpty()){
					filesPro fip = filesP.get(0);
					String  path  = "E:/QXFiles/"+fip.getFileName()+"."+fip.getFileType();
					File file = new File(path);
					if(file.exists()){
						file.delete();
					}
				}
				QxDao.DeleteFileSBYFileID(fileID);
				
				
			}

			public List<domain.testUsers> selectAlltestUsers() {
				// TODO Auto-generated method stub
				return new QxDao().selecttestUsers();
			}

			public List<domain.testUsers> selectTestuser(String iphone) {
				// TODO Auto-generated method stub
				return new QxDao().selectTestuser(iphone);
			}

			public static void addUser(testUsers testUser) {
				// TODO Auto-generated method stub
				new QxDao().addUser(testUser);
			}

			public List<analled> selectAllanalleds() {
				// TODO Auto-generated method stub
				return new QxDao().selectAllanalleds();
			}

			public List<analled> selectAndroidrdtionName(String edname) {
				// TODO Auto-generated method stub
				return new QxDao().selectAndroidrdtionName(edname);
			}

			public static void addandroidedtion(analled anaeds) {
				// TODO Auto-generated method stub
				new QxDao().addandroidedtion(anaeds);
			}

			public List<domain.qixinpro> selectallqixinpro() {
				// TODO Auto-generated method stub
				return new QxDao().selectQixinpros();
			}

			public List<qixinpro> selectoneProbyidqixinpro(int idqixinpro) {
				// TODO Auto-generated method stub
				return new QxDao().selectoneProbyidqixinpro(idqixinpro);
			}

			public static void updateours(qixinpro qixinpro) {
				// TODO Auto-generated method stub
				new QxDao().updateours(qixinpro);
			}

			public static void insterours(qixinpro qixpro) {
				// TODO Auto-generated method stub
				new QxDao().insterours(qixpro);
			}

			public static void deleteqixnpro(int idqixinpro) {
				// TODO Auto-generated method stub
				new QxDao().deleteqixnpro(idqixinpro);
			}

			public static void deletandroidedtion(int idadnroidalledtion) {
				// TODO Auto-generated method stub
				new QxDao().deletandroidedtion(idadnroidalledtion);
			}

			public static void deletetestuser(int userID) {
				// TODO Auto-generated method stub
				new QxDao().deletetestuser(userID);
			} 
		
}
