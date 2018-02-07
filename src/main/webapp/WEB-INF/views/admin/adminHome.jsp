<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
	<c:if test="${msg == 'success'}">
	<h2>${sessionScope.adminName}
	(${sessionScope.adminId})님 환영합니다.</h2>
	</c:if>
	
	${result}
</body>
</html>