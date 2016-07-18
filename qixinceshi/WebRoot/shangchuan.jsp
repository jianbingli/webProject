<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
         <h3>上传文件</h3>
         <!--  表单的默认上传属性  enctype   用户名   李四   %%%%   字符  文本  图片?-->
         
         <!-- 
         //   确认 必须有效上传请求
              boolean isMultipart = ServletFileUpload.isMultipartContent(request);
                 //   false     form   enctype="默认"application/x-www-form-urlencoded
                 //  true  form  enctype = "multipart/form-data"  有效的上传请求
          -->
         <form action="${pageContext.request.contextPath }/uploadServlet" method="post" enctype="multipart/form-data">
               用户名<input type="text" name="name"><br>
              密码<input type="text" name="password"><br>
               <input type="file"  name="upload"><br>
               <input type="submit" value="上传">
         </form>
</body>
</html>



