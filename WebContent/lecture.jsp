<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>CodingBooster</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="css/codingBooster.css">
</head>
<body>
	<style type = "text/css">
		.jumbotron{
			background-image:url('images/jumbotron.JPG');
			background-size:cover;
			text-shadow:black 0.2em 0.2em 0.2em;
			color:white;
		}
		img{
			width:150px;
			height:150px;
		}
	</style>
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
					</li>
				</ul>
				<form class = "navbar-form navbar-left">
					<div class = "form-group">
						<input type = "text" class = "form-control" placeholder = "내용을 입력하세요.">
					</div>
					<button type = "submit" class = "btn btn-default">검색</button>
				</form>
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
			</div>
		</div>
	</nav>
	<div class = "container">
		<div class = "row">
			<ul class = "list-group">
				<a class = "list-group-item active" href = "#">1강 Hello World</a>
				<a class = "list-group-item" href = "#">2강 변수와 상수</a>
				<a class = "list-group-item" href = "#">3강 데이터 타입</a>
				<a class = "list-group-item" href = "#">4강 연산자</a>
				<a class = "list-group-item" href = "#">5강 조건문과 반복문</a>
			</ul>
		</div>
		<div class = "embed-responsive embed-responsive-16by9" style = "margin-bottom:30px;">
			<iframe class = "embed-responsive-item" src = "https://www.youtube.com/embed/ktiPcVY_kdk"></iframe>
		</div>
		<hr>
		<p>
			첫 번째 강의는 C언어 개발 환경을 설치한 이후에 "Hello World"를 출력해보는 시간을 가집니다.
		</p>
		<pre>
#include &lt;studio.h&gt;

int	main(void)
{
	printf("Hello World!");
}	
		</pre>
	</div>
	<div class = "container">
	<hr>
		<form class ="form-horizontal">
			<label>댓글:</label>
			<textarea class = "form-control" rows = "5" id = "commentContent" name = "commentContent"></textarea>
			<br>
			<button type = "submit" class = "btn pull-right">등록</button>
		</form>
		<hr>
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
</body>
</html>