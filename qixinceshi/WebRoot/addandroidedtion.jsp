<%@page import="dao.QxDao"%>
<%@page import="domain.analled"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
QxDao qd = new QxDao();
List analleds= qd.selectAllanalleds(); 	
request.setAttribute("analleds", analleds);				
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<script type="text/javascript" src="js/my.js"></script>
  <script type="text/javascript">
     		//  用户名校验.....  用户后台存在  提示用户可以 提交    用户名不存在  表单不能提交  给用户提示
           //  用户输入 用户名   之后 光标离开  离焦事件    将用户输入的值  ajax 发送给后台  检验   判断用户名是否存在  在<span> 显示信息 
           //  根据 服务器判断值  确定表单 能否提交
           var  valid_name = false;   
           window.onload=function(){
        	   //  页面加载之后执行 操作 ...
        	     document.getElementById("ednames").onblur=function(){
        		   //  发送ajax 请求给服务器   
        		     var xhr = getXhr();
        		       xhr.open("POST","${pageContext.request.contextPath}/androidedtiomNameSelect");
        		       xhr.onreadystatechange=function(){
        		    	   //  获取服务器数据 在指定位置 js  显示 ...
        		    		 if(xhr.readyState==4){
                  			    if(xhr.status==200){
                  			      //   alert(typeof(xhr.responseText));//  boolean  flag   字符串  true  false??
                  			    	//  true   span 标签   绿色 显示  表单可以提交    false  用户名不存在  红色显示 表单 不能提交
                  			 var flag = xhr.responseText;
                  		          if('true'==flag){
                  			    		  //  绿色显示
                  			    		  document.getElementById("name_sp").innerHTML="<font color='green'>可以添加</font>";
                  			    		valid_name= true;
                  			    	  }else{
                  			    		   //  红色显示  
                  			    		  document.getElementById("name_sp").innerHTML="<font color='red'>已经存在</font>";
                  			    		  //  控制表单不让它提交.....  表单 submit // disabled
                  			    		  //2:  获取表单对象..  onsubmit   return false   return true 
                  			    	  }
                  			    }
                  		 }
        		       }
        		       xhr.setRequestHeader("CONTENT-TYPE","application/x-www-form-urlencoded");
        		       //  获取用户输入的值    this  离焦事件的标签对象  input
        		       xhr.send("ednames="+this.value);
        	   	}
        	   
           }
          
           //  定义一个函数  判断表单是否可以提交 
           function isSubmit(){
        	   return  valid_name;
           }
           
  			function changeTwoDecimal(x) {
			var f_x = parseFloat(x);
			if (isNaN(f_x)) {
				alert('function:changeTwoDecimal->parameter error');
				return false;
			}
			var f_x = Math.round(x * 100) / 100;
		
			return f_x;
}
  </script>
		<script type="text/javascript"> 
		function updateandroid() 
		{ 
				alert("23232");		
			
		}
		function panduanshifouweikong() 
		{ 
			if(ednames.value==""){
               alert("用户名不能为空");
                return false;
            }
            if(edurls.value==""){
                alert("密码不能为空");
                return false;
            } 	
		}
		function shanchuchengyuan(txt){
			var r=confirm("确定删除此版本吗？");
			  if (r==true)
			    {
			    	window.location.href="${pageContext.request.contextPath}/deletandroidedtion?idadnroidalledtion="+txt;
			    }
			
		}
		
	</script>
  </head>
  
  <body>
		<!-- 头部 --> 
		<jsp:include page="tophead.jsp" flush="true" />
		<!-- 主容器 --> 
		<div id="container" style="min-width:980px;"> 
		<!-- 左侧主显区 --> 
		<jsp:include page="lefthands.jsp" flush="true" />
		
		<div id="centerzhongjian"> 
				
					<div id="chengyuan"> 
							<div id="biaoti"> 
										<font style="font-weight:bold;font-style:nomal;">添加安卓版本</font>
							</div>
					</div>
					<br><br>
					<form action="${pageContext.request.contextPath }/addandroidedtion" method="post" id="myform" onsubmit="return isSubmit();">
					<br>
					<div style="width:100%;margin-top: 30px;">
					<div id="addanedtionname"  align="left" ><center>版本号：</center></div> 
					<div id="addanedtionnames" align="center"><input type="text" name="edname" id="ednames"  size="30"></div> 
					<div id="addanedtionname_sp" align="right"><span id="name_sp"></span></div>
					</div><br><br>
					<br>
					<div style="width:100%;">
					<div id="addanedtionname" align="left" ><center>下载链接</center></div> 
					<div id="addanedtionnames" align="center"><input type="text" name="edurl" id="edurls"  size="30"></div> 
					</div>
					
			         	<br><br>
			         	<input id="addsubmit" type="submit" value="添加" onclick="panduanshifouweikong()" size="10px">	
			        
        			</form>
        			<br>
        			<center><HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="90%" color=#54FF9F SIZE=3></center> 
        			<br>			 
        		 
					<div style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;height: 300px;">						
					<c:if	test="${not empty analleds}">
		  				<c:forEach var="aa" items="${analleds}">
		  				<div  class="row"> 
							<div class="col-md-11">
								<p>&nbsp&nbsp&nbsp&nbsp${aa.edname}</p>
								<a href="${aa.edurl}">-----${aa.edname}安卓包下载------</a>
								<div id=""><input id="shanchuanzhuobanbenlianjie" type="button"  onclick="shanchuchengyuan('${aa.idadnroidalledtion}')" value="删除${aa.edname}"></div>
							</div>
							<center><HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="90%" color=#54FF9F SIZE=3></center> 
						</div> 
		  				</c:forEach>
		  			</c:if>	
		        	</div>
		        	<div > 
			  			<input id="addanedbtn"  type="button" name="" value="修改版本" onclick="updateandroid()" />
			  		</div>
		</div> 
		
		<!-- END 左侧主显区 --> 
		<!-- 右侧边栏 --> 
		<jsp:include page="righthands.jsp" flush="true" />
		</div> 
		<!-- END 主容器 --> 
	
		<jsp:include page="tailend.jsp" flush="true" />
		
		
  </body>
</html>
