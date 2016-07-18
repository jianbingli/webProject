<%@page import="dao.QxDao"%>
<%@page import="domain.analled"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="gbk">
<meta name="description" content="Businnes, Portfolio, Corporate">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>安卓其他版本</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<!--[if lt IE 9]>
	<script src="js/html5shiv.min.js"></script>
	<script src="js/respond.min.js"></script>
	<script type="text/javascript" src="js/selectivizr.js"></script>
<![endif]-->
</head>

  <body>
				<div class="row"> 
					<div class="col-md-11">
						<p>&nbsp&nbsp&nbsp&nbsp最新</p>
						<a href="http://qxdownload.oss-cn-hangzhou.aliyuncs.com/android%2FV1.5.1.2%2Fcom.qixin.bchat1.5.1.2.apk">-----安卓最新包下载------</a>
						<br>
					</div>
				</div>
				<br>
				  <%
				   QxDao qd = new QxDao();
				 	List analleds= qd.selectAllanalleds(); 	
				 	request.setAttribute("analleds", analleds);
					%>					
			<c:if	test="${not empty analleds}">
  				<c:forEach var="aa" items="${analleds}">
  					<div  class="row"> 
					<div class="col-md-11">
						<p>&nbsp&nbsp&nbsp&nbsp${aa.edname}</p>
						<a href="${aa.edurl}">-----${aa.edname}安卓包下载------</a>
					</div>
				</div> 
				<br>
  				</c:forEach>
  			</c:if>	
		
  </body>
</html>
