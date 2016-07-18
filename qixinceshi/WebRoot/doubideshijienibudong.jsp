<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doubideshijienibudong.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		
	
	</script>
  </head>
  
  <body style="height:100%;">
				上德拉克死了的卡洛斯卡洛斯看到了阿勒斯

				<input name="button2" onclick="ShopConfirm('fdsaf')" value="点我" type="button"/>

<!--内容层--> 
<div id="ShopConfirmLayer" style="position:absolute;top:300px;left:100px;z-index:900;border:1px red solid;width:500px;display:none;">
	

    <input name="button1" value="关闭" type="button" onclick="CloseShopConfirm()"/> 
</div>

<!--覆盖层--> 
<div id="webBgLayer" style="position:absolute;top:0px;left:0px;z-index:899;background-color:#ccc;height:100%;width:100%;display:none;-moz-opacity:0.1;filter:alpha(opacity=50);"></div>

<script type="text/JavaScript"> 
    function ShopConfirm(str){ 
        var ShopConfirmLayer=document.getElementById("ShopConfirmLayer"); 
        var webBgLayer=document.getElementById("webBgLayer"); 
     // ShopConfirmLayer.innerHTML=str; 
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
</body>
</html>
