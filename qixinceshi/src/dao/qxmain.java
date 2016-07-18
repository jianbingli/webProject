package dao;

import java.io.File;
import java.io.IOException;
import java.util.List;
import dao.QxDao;
import domain.testcase;
public class qxmain {
	public static void main(String[] args) {
//		String biaoming = "ofile_center";
//		QxDao d = new QxDao();
//		List<testcase> tcList = d.selectxxName(biaoming);
//		int i = 1;
//		for (testcase tc : tcList) {
//			System.out.println("/*1**"+i+tc.getCaseDes()+" --------定义对象*/");
//			System.out.println("d.caseID = \""+tc.getCaseID()+"\";");
//			System.out.println("//因："+tc.getCaseReady());
//			System.out.println("d.setStar_off(d.);");
//			System.out.println("/*2***操作步骤*/");
//			System.out.println("//行:"+tc.getCasestep());
//			System.out.println("d.clickingHere(d.);");
//			System.out.println("/*3***验证case*/");
//			System.out.println("//果："+tc.getCaseResout());
//			System.out.println("d.writeLog(d.caseID,d.verificationView(d.));");
//			System.out.println("/*--------------------------------------*/");
//			i++;
//			}
		
		File directory = new File("qxmain"); 
		try {
			System.out.println(directory.getCanonicalPath());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
