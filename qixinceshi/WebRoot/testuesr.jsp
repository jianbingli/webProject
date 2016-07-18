<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>统计</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.css" rel='stylesheet' type='text/css'/>
	<script type="text/javascript"> 
		function myfunction(txt) 
		{ 		
				var v = confirm("确定删除此测试用户");
				if(v ==true ){
					window.location.href="${pageContext.request.contextPath}/deletetestuser?userID="+txt;
				}
				
		} 
		function addusers() 
		{ 
				window.location.href="${pageContext.request.contextPath}/addtestuser.jsp";
			
		}
</script>
  </head>

<body>

	<!-- 头部 --> 
		<jsp:include page="tophead.jsp" flush="true" />
		<!-- 主容器 --> 
		
		<div id=containertwo style="min-width:980px;"> <center>
				<h1 align="center">用户列表</h1>
		  	<c:if test="${empty testUsers}"> 
		  				<h1>没有数据
		  		</c:if>
		  		<c:if	test="${not empty testUsers}">
		  			
		  			<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="80%" color=green SIZE=3>
		  			<br>
		  			<table border="frame" width=80%" align="center" bordercolor=green >
		  				<tr>
		  					<th>用户ID</th>
							<th>用户名称</th>
							<th>用户账户</th>
							<th>用户密码</th>
							<th>用户操作</th>
							
		  				</tr>
		  				<c:forEach var="tu" items="${testUsers}">
		  					<tr>		
		  								<td><center>${tu.userID}</center> </td>
										<td><center>${tu.userName}</center> </td>
										<td><center>${tu.userPhone}</center> </td>
										<td><center>${tu.userPassword}</center> </td>
									<td><center><input type="button" name="" value="删除用户" onclick="myfunction(${tu.userID})"/></center> </td>
		  					</tr>
		  				</c:forEach>
		  			</table>
		  		</c:if>
		  		<div>
		  		<input id="addsubmit" type="button" name="" value="新增用户" onclick="addusers(${tu.userID})"> 
		  		</div>
		  	
  		</center>
  		</div>
				
  		<jsp:include page="tailend.jsp" flush="true" />
</body>
</html>

