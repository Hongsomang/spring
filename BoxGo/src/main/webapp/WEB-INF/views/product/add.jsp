<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<div>
			<h1>제품 등록</h1>
		</div>
		<div>
			<form method="post">
			
				<div>
					<label>제품명:</label>
					<input name="name" type="text">
				</div>
				<div>
					<label>바코드:</label>
					<input name="barcode" type="text"><button type="button"> 자동생성</button>
				</div>
				<hr>
				<div>
					<label>카테고리:</label>
					<input name="category" type="text">
					<select id="category">
						<option >직접입력</option>
						<c:forEach var="item" items="${list }">
							<c:if test="${item.domainId ==2}">
							<option value="${item.id }">${item.name }</option>
							</c:if>
						</c:forEach>
						
					</select>
				</div>
				<div>
					<label> 브랜드: </label>
					<input name="brand" type="text">
					<select id="brand">
						<option >직접입력</option>
						<c:forEach var="item" items="${list }">
							<c:if test="${item.domainId ==3}">
							<option value="${item.id }">${item.name }</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
				<div>
					<label>사이즈:</label>
					<input name="size" type="text">
					<select id="size">
						<option >직접입력</option>
						<c:forEach var="item" items="${list }">
							<c:if test="${item.domainId ==4}">
							<option value="${item.id }">${item.name }</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
				<div>
					<label>컬러:</label>
					<input name="color" type="text">
					<select id="color">
						<option >직접입력</option>
						<c:forEach var="item" items="${list }">
							<c:if test="${item.domainId ==5}">
							<option value="${item.id }">${item.name }</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
				<div>
					<button>등록</button>
				</div>
			</form>
		</div>
		<div>
			<a href="list"><button type="button">취소</button> </a>
		</div>
	</div>
</body>
</html>