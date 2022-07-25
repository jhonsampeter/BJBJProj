<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<title>북적북적 - 도서 리뷰</title>
<style>
div {
	border: 1px solid grey;
}

ul {
	padding: 10px;
	margin: 0px;
}

li {
	list-style: none;
}

tr {
	border-top: 1px solid grey;
	border-bottom: 1px solid grey;
}

.titleBox {
	margin-bottom: 10px;
}

.contentBox {
	width: 100%;
	padding: 5px;
}

.imgBox {
	width: 80px;
	height: 80px;
}
</style>
</head>
<body>
	<div class="container-fluid container-xl">
		<div class="titleBox">
			<h1>Book Review</h1>
			<span>회원 여러분들의 소중한 리뷰를 남겨주세요!</span>
		</div>
		<table class="contentBox">
			<tbody>
				<c:forEach items="${list}" var="item">
				<tr>
					<td width="10%">
						<div class="imgBox"
							style="margin: 5px; margin-left: 20px; margin-right: 15px;">
							<img src="">
						</div>
					</td>
					<td>
						<div class="titleBox" style="margin: 5px;">
							<ul>
								<li>${item.book_title}</li>
								<li><a href="/review/detail?review_no=${item.review_no}">${item.review_title}</a></li>
								<li><span>${item.nickname}</span><span>${item.written_date}</span></li>
							</ul>
						</div>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="btnBox">
			<button type="button" class="btn btn-primary" id="btnWriteReview">작성하기</button>
		</div>
	</div>
	<script>
		document.getElementById('btnWriteReview').onclick = function() {
			location.href = "/review/toWrite";
		}
	</script>
</body>
</html>