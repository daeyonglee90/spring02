<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
	<!-- enctype="multipart/form-data" 파일업로드 필수 옵션 -->
	<!-- application/x-www-form-urlencoded 기본옵션 -->
	<form action="${path}/upload/uploadForm" method="post" enctype="multipart/form-data">
		<input type="file" name="file">
		<input type="submit" value="업로드">
	</form>
</body>
</html>