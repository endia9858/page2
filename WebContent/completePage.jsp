<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
<title>Insert title here</title>
<style>
	.container{
		position:relative;
		top:200px;
	}
	.media-body{
		text-align:center;
	}
	.media-body img{
		width:20%;
		height:auto;
		display:inline-block;
	}
	.col-md-12 #main{
		position:relative;
		top:30px;
		text-align:center;
		font-size:4vw;
	}
	.col-md-12 #main h3{
		display:inline;
		font-size:4vw;
		font-weight:bold;
		color:green;
	}
	.col-md-12 #sub{
		position:relative;
		top:60px;
		text-align:center;
		color:grey;
		font-size:3vw;
	}
	.col-md-12 form{
		position:relative;
		top:100px;
		text-align:center;
		height:6vw;
	}
	.col-md-12 form input{
		width:30%;
		background:#9ddc00;
		font-weight:bold;
		font-size:2vw;
	}
	
</style>
</head>
<body>
	<div class = "container">
		<div class = "col-md-12">
			<div class = "media">
				<div class = "media-body">
					<img class = "media-object" src = "images/complete.png" alt = "완료이미지">
				</div>
			</div>
			<div id = "main">
				<span>회원 가입신청이 </span><h3>완료</h3><span>되었습니다</span><br>
			</div>
			<div id = "sub">
				<span>회원가입을 축하합니다. <br>코딩부스터에서 다양한 강의를 경험해보세요!</span>
			</div>
			<form action = "main.jsp" method = "post">
				<input type = "submit" class = "btn btn-default" value = "시작하기">
			</form>
		</div>
	</div>
</body>
</html>