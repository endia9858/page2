<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
<style>
	body{
		background-color:#f9f9f9;
	}
	.carousel-inner > .item >img {
		width:700px;
		height:500px;
		margin:auto;
		border-radius:10%;
	}
	.media .media-body .btn{
		border:0px solid #ffffff;
	}
	.media .media-body{
		height:auto;
	}
	.media-body .button-group{
		text-align:center;
	}
	.media .media-body .media-object{
		width:300px;
		height:300px;
		display:inline;
		margin:25px;
		border-radius:10%;
		box-shadow:10px 10px 5px 5px #ddd;
	}
	.modal-body{
		text-align:center;
	}
	.
	
</style>
</head>
<body>
	<nav class = "navbar navbar-default">
		<div class = "container-fluid">
			<div class = "navbar-header">
				<button type = "button" class = "navbar-toggle" data-toggle = "collapse" data-target = "#menu1">
					<span class = "icon-bar"></span>
					<span class = "icon-bar"></span>
					<span class = "icon-bar"></span>
				</button>
				<a class = "navbar-brand" href = "main.jsp">코딩 부스터</a>
			</div>
			<div class = "collase navbar-collapse" id = "menu1">
				<ul class = "nav navbar-nav">
					<li class = "active"><a href = "main.jsp">소개</a></li>
					<li><a href = "instructor.html">강사진</a></li>
					<li class= "dropdown">
						<a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">
							강의<span class = "caret"></span>
						</a>
						<ul class = "dropdown-menu">
							<li><a href = "lecture.jsp?lectureName=C">C언어</a></li>
							<li><a href = "lecture.jsp?lectureName=Java">Java</a></li>
							<li><a href = "lecture.jsp?lectureName=Android">Android</a></li>
						</ul>
					<li><a href = "photobook.jsp">포토북</a></li>
				</ul>
				<form class = "navbar-form navbar-left">
					<div class = "form-group">
						<input type = "text" class = "form-control" placeholder = "내용을 입력하세요.">
					</div>
					<button type = "submit" class = "btn btn-default">검색</button>
				</form>
				<c:if test = "${user==null}">
					<ul class = "nav navbar-nav navbar-right">
					<li class = "dropdown">
						<a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">
							접속하기<span class = "caret"></span>
						</a>
						<ul class = "dropdown-menu">
							<li><a href = "loginForm.jsp">로그인</a></li>
							<li><a href = "registerForm.jsp">회원가입</a></li>
						</ul>
					</li>
				</ul>
				</c:if>
				<c:if test = "${user!=null}">
					<ul class = "nav navbar-nav navbar-right" id = userbar>
						<li><a href = "#" data-toggle = "popover" data-placement = "bottom"><span class = "glyphicon glyphicon-user" id = "human"></span>&nbsp;&nbsp;${user.id}<span class = "caret"></span></a></li>
					</ul>
				</c:if>
			</div>
		</div>
	</nav>
<div class = "container-fluid">
	<br>
	<div id = "myCarousel" class = "carousel slide" data-ride = "carousel">
		<ol class = "carousel-indicators">
			<li data-target = "#myCarousel" data-slide-to = "0" class = "active"></li>
			<li data-target = "#myCarousel" data-slide-to = "1"></li>
			<li data-target = "#myCarousel" data-slide-to = "2"></li>
		</ol>
		
		<div class = "carousel-inner">
			<div class = "item active">
				<img src = "photo/cat1.jpg" alt = "a" width = "460" height = "345">
			</div>
			<div class = "item">
				<img src = "photo/cat2.jpg" alt = "b" width = "460" height = "345">
			</div>
			<div class = "item">
				<img src = "photo/cat3.jpg" alt = "c" width = "460" height = "345">
				<div class = "carousel-caption">
					<h3>봉구</h3>
					<p>귀엽다</p>
				</div>
			</div>
		</div>
		
		<a class = "left carousel-control" href = "#myCarousel" data-slide="prev">
			<span class  = "glyphicon glyphicon-chevron-left"></span>
		</a>
		<a class = "right carousel-control" href = "#myCarousel" data-slide="next">
			<span class  = "glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>
	<hr>
	<div class = "row">
		<div class = "col-md-12" >
			<div class = "media">
				<div class = "media-body">
					<div class = "button-group">
						<button type = "button" class = "btn btn-default" data-toggle = "modal" data-target = "#myModal" id = "button1">
							<img class = "media-object" src = "photo/1.jpg" alt = "봉구1">
						</button>
						<button type = "button" class = "btn btn-default" data-toggle = "modal" data-target = "#myModal" id = "button2">
							<img class = "media-object" src = "photo/2.jpg" alt = "봉구1">
						</button>
						<button type = "button" class = "btn btn-default" data-toggle = "modal" data-target = "#myModal" id = "button3">
							<img class = "media-object" src = "photo/3.jpg" alt = "봉구1">
						</button>
						<button type = "button" class = "btn btn-default" data-toggle = "modal" data-target = "#myModal" id = "button4">
							<img class = "media-object" src = "photo/4.jpg" alt = "봉구1">
						</button>
						<button type = "button" class = "btn btn-default" data-toggle = "modal" data-target = "#myModal" id = "button5">
							<img class = "media-object" src = "photo/5.jpg" alt = "봉구1">
						</button>
						<button type = "button" class = "btn btn-default" data-toggle = "modal" data-target = "#myModal" id = "button6">
							<img class = "media-object" src = "photo/6.jpg" alt = "봉구1">
						</button>
						<button type = "button" class = "btn btn-default" data-toggle = "modal" data-target = "#myModal" id = "button7">
							<img class = "media-object" src = "photo/7.jpg" alt = "봉구1">
						</button>
						<button type = "button" class = "btn btn-default" data-toggle = "modal" data-target = "#myModal" id = "button8">
							<img class = "media-object" src = "photo/8.jpg" alt = "봉구1">
						</button>
						<button type = "button" class = "btn btn-default" data-toggle = "modal" data-target = "#myModal" id = "button9">
							<img class = "media-object" src = "photo/9.jpg" alt = "봉구1">
						</button>
						<button type = "button" class = "btn btn-default" data-toggle = "modal" data-target = "#myModal" id = "button10">
							<img class = "media-object" src = "photo/10.jpg" alt = "봉구1">
						</button>
					</div>
				</div>
			</div>
		</div>
		
		<div class = "modal fade" id = "myModal">
			<div class = "modal-dialog">
				<div class = "modal-content">
					<div class = "modal-body" id = "modal-body">
					
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<footer style = "background-color:#000000; color: #ffffff">
		<div class = "container">
			<br>
			<div class = "row">
				<div class = "col-sm-2" style= "text-align:center;"><h5>Copyright &copy; 2019</h5><h5>성봉구(Bongu Sung)</h5></div>
				<div class = "col-sm-4"><h4>대표자 소개</h4><p>저는 코딩 부스터의 대표 성봉구입니다. 웹 개발에 관심이 많습니다.</p></div>
				<div class = "col-sm-2"><h4 style = "text-align:cetner;">내비게이션</h4>
					<div class = "list-group">
						<a class = "list-group-item" href = "main.jsp">소개</a>
						<a class = "list-group-item" href = "instructor.html">강사진</a>
						<a class = "list-group-item" href = "lecture.jsp">강의</a>
						<a class = "list-group-item" href = "photobook.jsp">포토북</a>
					</div>
				</div>
				<div class = "col-sm-2"><h4 style = "text-align:cetner;">SNS</h4>
					<div class = "list-group">
						<a class = "list-group-item" href = "https://www.facebook.com/">페이스북</a>
						<a class = "list-group-item" href = "https://www.youtube.com/">유튜브</a>
						<a class = "list-group-item" href = "https://tv.naver.com/">네이버 TV</a>
					</div>
				</div>
				<div class = "com-sm-2">
					<h4 style = "text-align:center;"><span class = "glyphicon glyphicon-ok"></span>&nbsp;by 성정모</h4>
				</div>
			</div>
		</div>
	</footer>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://gc.kis.v2.scr.kaspersky-labs.com/F247F31F-B608-414D-BF78-424F5507F96B/main.js" charset="UTF-8"></script>
<script>
$("#button1").click(function(){
	$("#myModal").ready(function(){
		$("#modal-body").html("<img src='photo/1.jpg' width='90%' height= '90%'>")});
});
$("#button2").click(function(){
	$("#myModal").ready(function(){
		$("#modal-body").html("<img src='photo/2.jpg' width='90%' height= '90%'>")});
});
$("#button3").click(function(){
	$("#myModal").ready(function(){
		$("#modal-body").html("<img src='photo/3.jpg' width='90%' height= '90%'>")});
});
$("#button4").click(function(){
	$("#myModal").ready(function(){
		$("#modal-body").html("<img src='photo/4.jpg' width='90%' height= '90%'>")});
});
$("#button5").click(function(){
	$("#myModal").ready(function(){
		$("#modal-body").html("<img src='photo/5.jpg' width='90%' height= '90%'>")});
});
$("#button6").click(function(){
	$("#myModal").ready(function(){
		$("#modal-body").html("<img src='photo/6.jpg' width='90%' height= '90%'>")});
});
$("#button7").click(function(){
	$("#myModal").ready(function(){
		$("#modal-body").html("<img src='photo/7.jpg' width='90%' height= '90%'>")});
});
$("#button8").click(function(){
	$("#myModal").ready(function(){
		$("#modal-body").html("<img src='photo/8.jpg' width='90%' height= '90%'>")});
});
$("#button9").click(function(){
	$("#myModal").ready(function(){
		$("#modal-body").html("<img src='photo/9.jpg' width='90%' height= '90%'>")});
});
$("#button10").click(function(){
	$("#myModal").ready(function(){
		$("#modal-body").html("<img src='photo/10.jpg' width='90%' height= '90%'>")});
});
</script>
</body>
</html>