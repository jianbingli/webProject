<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<script type="text/javascript"> 
		function myfunction() 
		{ 
				
				window.location.href="${pageContext.request.contextPath}/addqixinpro.jsp";
		} 
		function shanchuchengyuan(txt){
			var r=confirm("确定删除此成员吗？");
			  if (r==true)
			    {
			    	window.location.href="${pageContext.request.contextPath}/deleteqixnpro?idqixinpro="+txt;
			    }
			
		}
		
	</script>
  </head>
  
  <body>
		<!-- 头部 --> 
		<jsp:include page="tophead.jsp" flush="true" />
		<!-- 主容器 --> 
		<div id="container" style="min-width:980px;" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;"> 
						<div id="chengyuan"> 
								<div id="biaoti"> 
											<font style="font-weight:bold;font-style:nomal;">测试部成员</font>
								</div>
						</div>
						<br>
						<c:if	test="${not empty qixinpro}">
  						<c:forEach var="aa" items="${qixinpro}"> 
						<div id="chengyuanliebiao"> 
								<div id="chengyuantouxiang" class="headforchosebutton"><img src="QQ/${aa.prohead}"></div>
								<div id="chengyuanname"><a href="${pageContext.request.contextPath }/selectonePro?idqixinpro=${aa.idqixinpro}">${aa.proname}</a></div> 
								<div id="chengyuanyanyu">
									<div id="chengyuanyany"><center>${aa.promotto}</center></div>
									<div id="chengyuanshanchu"><input type="button"  style="width:50px;height:50px;background-image:url(imgs/hongseX.jpg);background-size: cover;" onclick="shanchuchengyuan('${aa.idqixinpro}')"></div>
								</div>
						</div>
						<center><HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="90%" color=#54FF9F SIZE=3></center> 
  						</c:forEach>
  						</c:if>	
  						<input id="addsubmit" type="button" value="添加" onclick="myfunction()"/>
		</div> 


		
		
  </body>
</html>
