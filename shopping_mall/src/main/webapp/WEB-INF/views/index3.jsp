<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String mid = (String)hs.getAttribute("mid");
	out.print(mid);
	hs.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="button" value="행복버튼" id="btn">
</body>
<script>
document.querySelector("#btn").addEventListener("click",function(){
	location.href="./restapi.do";
})
</script>
</html>