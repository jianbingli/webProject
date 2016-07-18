package webService;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import dao.QxDao;
import Services.QXService;
import webService.editFlie;
public class mainS{
	
	public static void main(String[] args) {
		 System.out.println(QxDao.getFilePathList());
		
	}
	final static void showAllFiles(File dir) throws Exception{
		  File[] fs = dir.listFiles();
			  for(int i=0; i<fs.length; i++){
			   System.out.println(fs[i].getAbsolutePath());
				   if(fs[i].isDirectory()){
					    try{
					     showAllFiles(fs[i]);
					    }catch(Exception e){
					    }
				    }
			   }
	 }
	public static List<String> getFilePathList(File file) { 
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
	    System.out.println(filePathList);
	    return filePathList;  
	}  


	
}
