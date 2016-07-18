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
    <script type="text/javascript" src="js/my.js"></script>
  <script type="text/javascript">
     		//  用户名校验.....  用户后台存在  提示用户可以 提交    用户名不存在  表单不能提交  给用户提示
           //  用户输入 用户名   之后 光标离开  离焦事件    将用户输入的值  ajax 发送给后台  检验   判断用户名是否存在  在<span> 显示信息 
           //  根据 服务器判断值  确定表单 能否提交
           var  valid_name = false;   
           window.onload=function(){
        	   //  页面加载之后执行 操作 ...
        	     document.getElementById("FileNames").onblur=function(){
        		   //  发送ajax 请求给服务器   
        		     var xhr = getXhr();
        		       xhr.open("POST","${pageContext.request.contextPath}/FileNameSelect");
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
        		       xhr.send("FileNames="+this.value);
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
		<jsp:include page="tophead.jsp" flush="true" />
		<!-- 主容器 --> 
		<div id="container" style="min-width:980px;"> 
		<!-- 左侧主显区 --> 
		<jsp:include page="lefthands.jsp" flush="true" />
		<div id="centerzhongjian"> 
				<div id="chengyuan">
					<div id="biaoti">
					<font style="font-weight:bold;font-style:nomal;">文件设置</font>
					</div>
				</div>
	
        <form action="${pageContext.request.contextPath }/editFlie" method="post" id="myform" onsubmit="return isSubmit();">
        <center>
        	文件名   <input type="text" name="FileName" id="FileNames"><span id="name_sp"></span></br>
         	后缀名   <input type="text" name="FileType" id="FileType"></br>
         	文件大小(单位字节)<input type="text" name="FileSize" id="FileSize">1MB=1048576B</br>
         	填充内容<input type="text" name="FileInfro" id="FileInfro"></br>
         	<input type="submit" value="生成文件">	
         </center>
        </form>
						
		</div> 
		<!-- END 左侧主显区 --> 
		<!-- 右侧边栏 --> 
		<div id="side" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;"> 
		  		<c:if test="${empty filesPro}"> 
		  			<div id="chengyuan">
						<div id="biaoti">
						<font style="font-weight:bold;font-style:nomal;">没有文件</font>
						</div>
					</div>
		  		</c:if>
		  		<c:if	test="${not empty filesPro}">
		  			<div id="chengyuan">
						<div id="biaoti">
						<font style="font-weight:bold;font-style:nomal;">文件</font>
						</div>
					</div>
		  			<table class="wenjianliebiao" border="solid" >
		  				<tr>
		  					<th>文件ID</th>
							<th>文件名称</th>
							<th>文件大小</th>
							<th>文件内容</th>
							<th>操作</th>
		  				</tr>
		  				<c:forEach var="FP" items="${filesPro}">
		  					<tr>		
		  								<td>${FP.fileID}</td>
										<td>${FP.fileName}.${FP.fileType}</td>
										
										
										<td >
											<c:if	test="${FP.fileSize<1048576}">
											${FP.fileSize}B
											</c:if>
											<c:if	test="${FP.fileSize>1048576}">
												changeTwoDecimal(x);
											
											
											</c:if>
										</td>
										
										<td>${FP.fileInfro}</td>
		  								<td><a href="${pageContext.request.contextPath}/downLoads?FileID=${FP.fileID}">下载</a><br>
		  								<a href="${pageContext.request.contextPath}/DelectFiel?FileID=${FP.fileID}">删除</a></td>
		  					</tr>
		  				</c:forEach>
		
		  			</table>
		  		</c:if>
		</div> 
		<!-- END 右侧边栏 --> 
		</div> 
		<!-- END 主容器 --> 
		<jsp:include page="tailend.jsp" flush="true" />
		
		
		

		
  </body>
</html>
