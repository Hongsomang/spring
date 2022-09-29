<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<h3>게임 정보변경</h3>
			
		</div>
		<div>
			<form method="post">
				<div>
					<label class="form-label">게임코드: ${item.id}</label>
				</div>
				<div class="form-group">
					<label class="form-label">게임명:</label>
					<input type="text" name="title" value="${item.title}" class="form-control">
				</div>
				<div class="form-group">
					<label class="form-label">게임 회사:</label>
					<select name="publisherId" class="form-select ">
						<option value="0">알수없음</option>
						<c:forEach var="publisher" items="${list }">
							<option value="${publisher.id}" ${publisher.id==item.publisherId ? 'selected' : '' }>${publisher.name }</option >
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label class="form-label">가격:</label>
					<input type="number" name="price" value="${item.price}" class="form-control">
				</div >
				<div class="form-group">
					<label class="form-label">출시일:</label>
					<input type="date" name="pubDate" value="${item.pubDateFormat}" class="form-control" >
				</div>
				<div>
					<label class="form-label">등록일:${item.regDate}</label>
				</div>
				<textarea id="summernote" name="contents" class="form-control" >${item.contents} </textarea>
				<div class="form-group mt-3">
					<button class="btn btn-sm btn-primary">변경</button>
					<a href="../list" ><button type="button" class="btn btn-sm btn-secondary">취소</button> </a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>