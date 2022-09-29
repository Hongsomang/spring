<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>GameShop 2022 </h1>
	<c:if test="${sessionScope.member== null}">
		<div>
			<a href="login">로그인</a>
		</div>	
	</c:if>
	<c:if test="${sessionScope.member != null}">
		<div>
			<div>환영합니다. ${sessionScope.member.name}님~</div>
			
		</div>
		<div>
			<a href="logout">로그아웃</a>
		</div>		
	</c:if>
	<ul>
		<li><a href="game/list">게임 관리</a></li>
		<li><a href="publisher/list">게임회사 관리</a></li>
	
	</ul>
</body>
</html>