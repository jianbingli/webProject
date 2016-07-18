<%@page import="dao.QxDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 QxDao qd = new QxDao();
List qixinpros= qd.selectQixinpros(); 	
request.setAttribute("qixinpros", qixinpros);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
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
		<!-- 头部 --> 
		<jsp:include page="tophead.jsp" flush="true" />
		<!-- 主容器 --> 
		<div id="container" style="min-width:980px;"> 
		<!-- 左侧主显区 --> 
		<jsp:include page="lefthands.jsp" flush="true" />
		<div id="centerzhongjian" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;"> 
						<div id="chengyuan"> 
								<div id="biaoti"> 
											<font style="font-weight:bold;font-style:nomal;">扫码加QQ好友</font>
								</div>
								<br>
								<img style="height:580 ;width: 423.24px;" src="imgs/QQerweima.jpg">
						</div>
						<br>
						<c:if	test="${not empty qixinpros}">
  						<c:forEach var="aa" items="${qixinpros}"> 
						<div id="chengyuanliebiao"> 
								<div id="chengyuantouxiang" class="headforchosebutton">
								<img src="QQ/${aa.prohead}"></div><div id="chengyuanname">${aa.proname}</div> <div id="chengyuanyanyu">${aa.promotto}</div>
						</div>
						<center><HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="90%" color=#54FF9F SIZE=3></center> 
  						</c:forEach>
  						</c:if>	
		</div> 

		<!-- END 左侧主显区 --> 
		<!-- 右侧边栏 --> 
		<jsp:include page="righthands.jsp" flush="true" />
		</div> 
		<!-- END 主容器 --> 
		<jsp:include page="tailend.jsp" flush="true" />
		
		
  </body>
</html>
