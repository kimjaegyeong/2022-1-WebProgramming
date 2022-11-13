<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<title>뉴스 관리 앱</title>
</head>
   <body>
   <div class="container w-75 mt-5 mx-auto">
    <h2>뉴스 목록</h2>
    <hr>
    <ul class="list-group">
		<c:forEach var="news" items="${newslist}" varStatus="status">
		  <li class="list-group-item list-group-item-action d-flex justify-content-between align-items-center"><a href="news.nhn?action=getNews&aid=${news.aid}" class="text-decoration-none">[${status.count}] ${news.title}, ${news.date}</a>
		  <a href="news.nhn?action=deleteNews&aid=${news.aid}"><span class="badge bg-secondary">&times;</span></a>
		  </li>
		</c:forEach> 
	</ul>
	<hr>
	<c:if test="${error != null}">
		<div class="alert alert-danger alert-dismissible fade show mt-3">
				에러 발생: ${error}
			<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
		</div>
	</c:if>
	<button class="btn btn-outline-info mb-3" type="button" data-bs-toggle="collapse" data-bs-target="#addForm" aria-expanded="false" aria-controls="addForm">뉴스 등록</button>
	<div class="collapse" id="addForm">
	  <div class="card card-body">
		<form method="post" action="/webserverprogramming_2022/news.nhn?action=addNews" enctype="multipart/form-data">
			<label class="form-label">제목</label>
			<input type="text" name="title" class="form-control">
			<label class="form-label">이미지</label>
			<input type="file" name="file" class="form-control">
			<label class="form-label">기사내용</label>
			<textarea cols="50" rows="5" name="content" class="form-control"></textarea>
			<button type="submit" class="btn btn-success mt-3">저장</button>
		</form>
	  </div>
	</div>
	</div>
</body>
</html>