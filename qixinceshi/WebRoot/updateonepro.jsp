<%@page import="dao.QxDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
QxDao qd = new QxDao();
List lists= qd.getFilePathList(); 	
request.setAttribute("lists", lists);
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
		function changeheads(txt) 
		{ 
				document.getElementById("qixinheadonepro").src="QQ/"+txt;
				document.getElementById("protouxiang").value=txt;
		}
		function myfunction(txt) 
		{ 
				//window.location.href="${pageContext.request.contextPath}/selectALLfile";
				alert("瞎JB乱点什么！！");
		} 
		var valid_name = false;
		function panduanshifouweikong() 
		{ 
			if(promingzi.value==""){
               alert("名字不能为空");
            }else if(promingyan.value==""){
                alert("名言不能为空");
            } else{
            	valid_name = true;
            }  	
		}
		function isSubmit(){
        	   return  valid_name;
           }
	</script>
  </head>
  
  <body>

  						
  						<!-- 头部 --> 
		<jsp:include page="tophead.jsp" flush="true" />
		
		<div id="changepro" style="min-width:980px;">
				<form action="${pageContext.request.contextPath }/updateours" method="post" onsubmit="return isSubmit()">
				<div id="headforall">
						<div id="touxiangbufen">
						<div id="headtest">
							<font color="red">头像NB嘛？像！</font>
						</div>
						<div id="headonepro" class="headforchosebut">
								<c:if	test="${not empty qixinpro}">
  								<c:forEach var="aa" items="${qixinpro}">
								<img id="qixinheadonepro"  src="QQ/${aa.prohead}" >
								<input id="protouxiang" name="protouxiang" value="${aa.prohead}" style="display:none;"/>
								<input type="hidden"  name="proid" value="${aa.idqixinpro}"/>
								</c:forEach>
  								</c:if>	
						</div>
						<div id="shangchuantuxiang">
								<input id="" type="button" value="上传图片" onclick="" />
						</div>
						</div>
						<div id="headforchose" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;">
								<table align="center"> 
							  <c:forEach items="${lists}" var="obj"  varStatus="status">     
							     <c:if test="${status.count eq 1 || (status.count-1) % 15 eq 0}">    
							      <tr>    
							     </c:if>    
								       <td>    
								       <input size="40px;" type="button"  style="width:40px;height:40px;background-image:url(QQ/${obj});background-size: cover;" onclick="changeheads('${obj}')" src="QQ/${obj}"> 
								       </td>      
							      <c:if test="${status.count % 15 eq 0 || status.count eq 15}">    
							      </tr>    
							      </c:if>    
							  </c:forEach> 	
						</table> 
				
						</div>
				</div>
						<div id="pronames">
							<c:if	test="${not empty qixinpro}">
  								<c:forEach var="aa" items="${qixinpro}">
								
							<font size="5px;" color="red">名字:</font>
								<input id="promingzi" name="promingzi" size="20px;" type="text" value="${aa.proname}" /> 
								</c:forEach>
  								</c:if>
						</div>
						<div id="pronames">
							<c:if	test="${not empty qixinpro}">
  								<c:forEach var="aa" items="${qixinpro}">
								
							<font size="5px;" color="red">名言:</font>
								<input id="promingyan" name="promingyan" size="20px;" type="text" value="${aa.promotto}" /> 
								</c:forEach>
  								</c:if>	
						</div>
						<div id="pronames">
							<input id="addsubmit" type="submit" value="保存" onclick="panduanshifouweikong()"  />
						</div>
			</form>
		</div>		
	
		<!-- END 主容器 --> 
		<jsp:include page="tailend.jsp" flush="true" />
  </body>
</html>
