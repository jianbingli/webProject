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
    
    <title>首页</title>
    <script type="text/javascript"> 
		function myfunction(txt) 
		{ 
				//window.location.href="${pageContext.request.contextPath}/selectALLfile";
				alert("瞎JB乱点什么！！");
		} 
		function addanedtion() 
		{ 
				window.location.href="${pageContext.request.contextPath}/addandroidedtion.jsp";
			
		}
		function ShopConfirm(currentImage){ 
        var ShopConfirmLayer=document.getElementById("ShopConfirmLayer"); 
        var webBgLayer=document.getElementById("webBgLayer"); 
        var ShopConfirmLr=document.getElementById("ShopConfirmLr"); 
	     ShopConfirmLr.style.backgroundImage="url("+currentImage+")"; 
	     ShopConfirmLayer.style.display="";//显示内容层，显示覆盖层
	
	     ShopConfirmLayer.style.left=parseInt((document.documentElement.scrollWidth-ShopConfirmLayer.offsetWidth)/2)+document.documentElement.scrollLeft+"px"; 
	     ShopConfirmLayer.style.top=Math.abs(parseInt((document.documentElement.clientHeight-ShopConfirmLayer.offsetHeight)/2))+document.documentElement.scrollTop+"px"; //为内容层设置位置
	     webBgLayer.style.display=""; 
	     webBgLayer.style.height=document.documentElement.scrollHeight+"px"; //为覆盖层设置高度 
	    } 
	    function CloseShopConfirm(){ 
	        var ShopConfirmLayer=document.getElementById("ShopConfirmLayer"); 
	        var webBgLayer=document.getElementById("webBgLayer"); 
	        ShopConfirmLayer.style.display="none"; 
	        webBgLayer.style.display="none"; 
	    } 
	</script>
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
  
  <body >
		<!-- 头部 --> 
		<jsp:include page="tophead.jsp" flush="true" />
		<!-- 主容器 --> 
		<div id="container" style="min-width:980px;"> 
		<!-- 左侧主显区 --> 
		<jsp:include page="lefthands.jsp" flush="true" />
		
		<div id="centerzhongjian"> 
				
					<div id="chengyuan"> 
							<div id="biaoti"> 
										<font style="font-weight:bold;font-style:nomal;">安卓其他版本</font>
							</div>
					</div>
					<br><br>
					<div > 
						
						<div ><center>
							<input type="button"  style="border-style: solid; border-width: 0;width:200px;height:200px;background-image:url(imgs/alled.png);background-size: cover;" onclick="ShopConfirm('imgs/alled.png')">
						</center>	
						</div>
					</div>
					<center><HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="90%" color=#54FF9F SIZE=3></center>  	
					<div id="anedguanli" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;"> 
						<div class="row"> 
							<div class="col-md-11">
								<p>最新</p>
								<a href="http://qxdownload.oss-cn-hangzhou.aliyuncs.com/android%2FV1.5.1.2%2Fcom.qixin.bchat1.5.1.2.apk">-----安卓最新包下载------</a>
							</div>
						</div>
						<center><HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="90%" color=#54FF9F SIZE=3></center> 
						
						<c:if	test="${not empty analleds}">
			  				<c:forEach var="aa" items="${analleds}">
			  					<div  class="row"> 
								<div class="col-md-11">
									<p>${aa.edname}</p>
									<a href="${aa.edurl}">-----${aa.edname}安卓包下载------</a>
								</div>
							</div>
							<center><HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="90%" color=#54FF9F SIZE=3></center> 
			  				</c:forEach>
			  			</c:if>	
			  		</div>	
			  		<div > 
			  			<input id="addanedbtn"  type="button" name="" value="添加版本" onclick="addanedtion()" />
			  		</div>
		</div> 
		
		<!-- END 左侧主显区 --> 
		<!-- 右侧边栏 --> 
		<jsp:include page="righthands.jsp" flush="true" />
		<!-- END 右侧边栏 --> 
		</div> 
		<!-- END 主容器 --> 
	
		<jsp:include page="tailend.jsp" flush="true" />
		<div id="ShopConfirmLayer" style="position:absolute;top:300px;left:100px;z-index:900;border:0px red solid;width:500px;display:none;">
	
		<input id="ShopConfirmLr" type="button"  style="width:400px;height:400px;background-size: cover;" onclick="CloseShopConfirm()">
		</div>
		<!--覆盖层--> 
		<div id="webBgLayer" style="position:absolute;top:0px;left:0px;z-index:899;background-color:gray;height:100%;width:100%;display:none;-moz-opacity:0.9;filter:alpha(opacity=50);"></div>
		
  </body>
</html>
