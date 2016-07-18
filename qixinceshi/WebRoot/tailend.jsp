<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/style.css" rel='stylesheet' type='text/css'/>
	<script language =javascript >
		var curIndex=0;
		//时间间隔(单位毫秒)，每秒钟显示一张，数组共有5张图片放在Photos文件夹下。
		var timeInterval=3000;
		var arr=new Array();
		arr[0]="imgs/1.JPG";
		arr[1]="imgs/2.JPG";
		arr[2]="imgs/3.JPG";
		arr[3]="imgs/4.JPG";
	
		setInterval(changeImg,timeInterval);
		function changeImg()
		{
		    var obj=document.getElementById("obj");
		    if (curIndex==arr.length-1) 
		    {
		        curIndex=0;
		    }
		    else
		    {
		        curIndex+=1;
		    }
		    obj.src=arr[curIndex];
		}
		</script>
		

		
		
		
		
  </head>
  
  <body>
  		<center><HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="80%" color=green SIZE=3></center> 
		<!-- 底部 --> 
		<div id="foot" style="min-width:980px;">
				<div id="footfootfirst">
				上海企信企业发展有限公司是为全球中小型企业提供标准化、流程化、系统化的管理协作解决方案，以开放、创 新、连接为核心思维帮助全球中小型企业发展，共建全行业大数据的社会化服务云平台。 
				</div>
				<div id="footfoot">
				公司运用移动互联网、云计算、大数据等技术助力中小型企业，在移动互联网时代快速高效的发展，成为智慧型企业，共同构建全新的企业健康生态圈。 </div>
				
				<div id="footfoot">
				公司使命 :以开放、创新、连接为核心思维帮助全球中小型企业发展，共建全行业大数据平台，构建智慧型企业。 </div>
				<div id="footfoot">
				公司愿景 :打造全球最有效的企业社会化服务云平台。 </div>
				<div id="footfoot">
				公司宗旨:为改变而生，构建企业健康生态圈。
				</div>
		</div> 
		<!-- END 底部 --> 

		
  </body>
</html>
