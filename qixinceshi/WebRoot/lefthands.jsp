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
		<!-- 左侧主显区 --> 
		<div id="content"> 
				<div id="jieshao"> 
					<div id="linear"> 
					<font style="font-weight:bold;font-style:italic;">介绍</font>		
					</div> 
					<div>
							<h1  class="demo-text" >测</h1>
					</div>
					
				</div> 	
				<div id="xinwen"> 
					<div id="linear">
					<font style="font-weight:bold;font-style:italic;" >新闻</font>
					
					</div>
					<center><img id=obj src ="imgs/1.JPG" width=80% height=150 border =0></center>
				</div>
				<div id="zizhi"> 
					<div id="linear"> 
						<font style="font-weight:bold;font-style:italic;">相关链接</font>
					</div>
					<br>
					<div > 
						<center><a href="${pageContext.request.contextPath }/selectallqixinpro">-------成员修改------</a></center>
						<center><a href="${pageContext.request.contextPath }/selectALLfile">-------下载文件------</a></center>
						<center><a href="${pageContext.request.contextPath }/alledition">-----其他版本下载----</a></center>
						<center><a href="${pageContext.request.contextPath }/doubideshijienibudong.jsp">---逗逼的世界你不懂--</a></center>
					</div>
				</div>
		</div> 
		

		
  </body>
</html>
