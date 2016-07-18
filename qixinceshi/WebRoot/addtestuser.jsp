<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Insert title here</title>
  <script type="text/javascript" src="js/my.js"></script>
  <script type="text/javascript">
     		//  用户名校验.....  用户后台存在  提示用户可以 提交    用户名不存在  表单不能提交  给用户提示
           //  用户输入 用户名   之后 光标离开  离焦事件    将用户输入的值  ajax 发送给后台  检验   判断用户名是否存在  在<span> 显示信息 
           //  根据 服务器判断值  确定表单 能否提交
           var  valid_name = false;   
           window.onload=function(){
        	   //  页面加载之后执行 操作 ...
        	     document.getElementById("iphone").onblur=function(){
        		   //  发送ajax 请求给服务器   
        		     var xhr = getXhr();
        		       xhr.open("POST","${pageContext.request.contextPath}/selectUserbyphone");
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
        		       xhr.send("name="+this.value);
        	   }
        	   
           }
           //  定义一个函数  判断表单是否可以提交 
           function isSubmit(){
        	   return  valid_name;
           }
  </script>
</head>
<body>

		<!-- 头部 --> 
		<jsp:include page="tophead.jsp" flush="true" />
		<!-- 主容器 --> 
		
		<div id=containertwo style="min-width:980px;">
		<center>
 		<h2>添加用户</h2>
 		<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="80%" color=green SIZE=3>
 		<HR style="FILTER: progid:DXImageTransform.Microsoft.Shadow(color:#green,direction:145,strength:15)" width="80%" color=green SIZE=1>
 		<div style="width:100%;">
	        <form action="${pageContext.request.contextPath }/addTestuser" method="post" id="myform" onsubmit="return isSubmit();">
	        	用户名字<input type="text" name="name" id="name"><br>
	        	<HR style="border:1 dashed #987cb9" width="80%" color=green SIZE=1>
	        	用户手机<input type="text" name="iphone" id="iphone"><br><span id="name_sp"></span>
	        	<HR style="border:1 dashed #987cb9" width="80%" color=green SIZE=1>
	        	用户密码<input type="text" name="password" id="password"> 
	         	<br>
	         
	         <HR style="FILTER: progid:DXImageTransform.Microsoft.Shadow(color:#green,direction:145,strength:15)" width="80%" color=green SIZE=1>
	         <HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="80%" color=green SIZE=3>
	         <input id="addsubmit" type="submit" value="添加用户">	
	         
	        </form>
	        
        </div>
        
        </center>
        
        </div>
				
  		<jsp:include page="tailend.jsp" flush="true" />
</body>
</html>