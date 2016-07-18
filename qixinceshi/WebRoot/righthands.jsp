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
		
  </head>
  
  <body>
		<div id="side"> 
					<div id="imgan">
						<input type="button"  style="border-style: solid; border-width: 0;width:240px;height:240px;background-image:url(imgs/android.jpg);background-size: cover;" onclick="ShopConfirm('imgs/android.jpg')">
					</div>
					<div id="imgant">
						<img alt=""  src="imgs/an.jpg">	
						<img id="anzhuojpg" alt=""  src="imgs/anzhuo.jpg">	
						
					</div>
					<div id="imgipt">
						<img alt=""  src="imgs/ip.jpg">
						<center><img alt=""  src="imgs/pingguo.jpg"></center>
					</div>
					<div id="imgip">
						<img alt="" src="imgs/IOS.jpg" align="right">
					</div>
					
					
					
		</div> 

		
  </body>
</html>
