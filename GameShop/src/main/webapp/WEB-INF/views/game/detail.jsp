<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- 어느 드바이스에서도 크기를 맞게 만들어줌-->
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" >
 <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
 
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>
			<h3>게임 세부정보</h3>
		</div>
		<div>
			<label>게임번호</label>
			<div>${item.id}</div>
		</div>
		<div>
			<label>게임명</label>
			<div>${item.title}</div>
		</div>
		<div>
			<label>게임회사</label>
			<div>${item.publisherId}</div>
		</div>
		<div>
			<label>게임소개</label>
			<div>${item.contents}</div>
		</div>
		<div>
			<label>출시일</label>
			<div>${item.pubDate}</div>
		</div>
		<div>
			<label>작성자</label>
			<div>${item.memberId}</div>
		</div>
		<div>
			<label>등록일일</label>
			<div>${item.regDate}</div>
		</div>
		<div>
			<a href="../list"><button>목록</button></a>
		</div>
		<c:if test="${sessionScope.member.id == item.memberId }">
			<div>
				<a href="../delete/${item.id}"><button>삭제</button></a>
			</div>
			<div>
				<a href="../update/${item.id}"><button>변경</button></a>
			</div>
		</c:if>
	</div>
</body>
</html>