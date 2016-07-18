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
		<!-- 头部 --> 
		<div id="head" style="min-width:980px;"> 
					<div id="logo"> 
					
					</div> 
		
					<div id="kouhao">
     					<font color="green" style="font-weight:bold;font-style:italic;">标语</font>
					</div>
					
					<div class="top-menu">
							
							<ul>
								<li><a href="index.jsp">首页</a></li>
								<li><a href="${pageContext.request.contextPath }/selectALLfile">文件</a></li>
								<li><a href="${pageContext.request.contextPath }/getTextusers">测试用户</a></li>
								<li><a href="contentme.jsp">联系我</a></li>
							</ul>	
							
					</div>
					
					
		</div>
		<!--END 头部 --> 
		
		<center><HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="80%" color=green SIZE=3></center> 
		
  </body>
</html>
