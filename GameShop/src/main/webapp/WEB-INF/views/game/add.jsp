<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" >

 <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
 
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/lang/summernote-ko-KR.js"></script>

<script type="text/javascript">
//웹페이지가 로드되면 아이디가 summernote를 찾아서 summernote객체를 찾아줌
	$(function(){
		$("#summernote").summernote({
			lang: 'ko-KR'
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div>
			<h3>게임 등록</h3>
			
		</div>
		<div>
			<form method="post" >
				<div class="form-group">
					<label class="form-label">게임명:</label>
					<input type="text" name="title" class="form-control">
				</div>
				<div class="form-group">
					<label  class="form-label">게임회사:</label>
					<select name="publisherId" class="form-select ">
						<option value="0">알수없음</option>
						<c:forEach var="item" items="${list }">
							<option value="${item.id}">${item.name }</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label  class="form-label">가격:</label>
					<input type="number" name="price" class="form-control">
				</div>
				<div class="form-group">
					<label  class="form-label">출시일:</label>
					<input type="date" name="pubDate" class="form-control">
				</div>
				<div class="form-group">
					<label class="form-label">게임소개:</label>
					<textarea id="summernote" name="contents" class="form-control" >${item.contents} </textarea>
				</div>
				<div class="form-group mt-3" >
					<button class="btn btn-sm btn-primary">등록</button>
					<a href="list" ><button type="button" class="btn btn-sm btn-secondary">취소</button> </a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>