<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="css/codingBooster.css">
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="//cdn.jsdelivr.net/jquery.validation/1.14.0/jquery.validate.min.js"></script>
<script src = "https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script src = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script> 
</head>
<c:if test = "${id==null}">
	<% pageContext.setAttribute("id", "아이디"); %>
</c:if>
<c:if test = "${email==null}">
	<% pageContext.setAttribute("email", "이메일"); %>
</c:if>
<c:if test = "${password==null}">
	<% pageContext.setAttribute("password", "비밀번호"); %>
</c:if>
<c:if test = "${confirm==null}">
	<% pageContext.setAttribute("confirm", "비밀번호 확인"); %>
</c:if>
<body>
	<style type = "text/css">
.panel-login {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
}
.panel-login>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align:center;
}
.panel-login>.panel-heading a{
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-login>.panel-heading a.active{
	color: #029f5b;
	font-size: 18px;
}
.panel-login>.panel-heading hr{
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
}
.panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-login input:hover,
.panel-login input:focus {
	outline:none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}
.btn-login {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}
.btn-login:hover,
.btn-login:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}
.forgot-password {
	text-decoration: underline;
	color: #888;
}
.forgot-password:hover,
.forgot-password:focus {
	text-decoration: underline;
	color: #666;
}

.btn-register {
	background-color: #1CB94E;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #1CB94A;
}
.btn-register:hover,
.btn-register:focus {
	color: #fff;
	background-color: #1CA347;
	border-color: #1CA347;
}
	
	</style>
	<nav class = "navbar navbar-default">
		<div class = "container-fluid">
			<div class ="navbar-header">
				<button type = "button" class = "navbar-toggle" data-toggle = "collapse" data-target = "#menu1">
					<span class = "icon-bar"></span>
					<span class = "icon-bar"></span>
					<span class = "icon-bar"></span>
				</button>
				<a class = "navbar-brand" href = "main.jsp">코딩 부스터</a>
			</div>
			<div class = "collapse navbar-collapse" id = "menu1">
				<ul class = "nav navbar-nav">
					<li class = "active"><a href = "main.jsp">소개</a>
					<li><a href = "#">강사진</a>
					<li class = "dropdown">
						<a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">
						강의<span class = "caret"></span>
						</a>
						<ul class = "dropdown-menu">
							<li><a href = "lecture.jsp?lectureName=C">C언어</a></li>
							<li><a href = "lecture.jsp?lectureName=Java">Java</a></li>
							<li><a href = "lecture.jsp?lectureName=Android">안드로이드</a></li>
						</ul>
					<li><a href = "photobook.jsp">포토북</a></li>
					</li>
				</ul>
				<form class = "navbar-form navbar-left">
					<div class = "form-group">
						<input type = "text" class = "form-control" placeholder = "내용을 입력하세요.">
					</div>
					<button type ="submit" class = "btn btn-default">검색</button>
				</form>
				<ul class = "nav navbar-nav navbar-right">
					<li class = "dropdown">
						<a href ="#" class = "dropdown-toggle" data-toggle = "dropdown">
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
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">로그인</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">회원가입</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="loginCheck.jsp" method="post" role="form" style="display: block;">
									<%
										if(request.getAttribute("error")!= null){
									%>
										<p><span class = "glyphicon glyphicon-remove"></span>${error}</p>
									<%
										}
									%>
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="아이디" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="비밀번호">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> 아이디 저장 </label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="로그인">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="https://phpoll.com/recover" tabindex="5" class="forgot-password">암호를 잊어버리셨습니까?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" action="registerCheck.jsp" method="post" role="form" style="display: none;">
									<div class="form-group has-feedback">
										<button type = "button" id = "btn" class = "btn btn-default has-feedback" value = "overlap"></button>
										<input type="text" name="username" id="username1" tabindex="1" class="form-control" placeholder="아이디">
										<span></span>
									</div>
									<div class="form-group has-feedback">
										<input type="email" name="email" id="email1" tabindex="1" class="form-control" placeholder="이메일" >
										<span></span>
									</div>
									<div class="form-group has-feedback">
										<input type="password" name="password" id="password1" tabindex="2" class="form-control" placeholder="비밀번호">
										<span></span>
									</div>
									<div class="form-group has-feedback">
										<input type="password" name="confirmpassword" id="confirmpassword" tabindex="2" class="form-control" placeholder="비밀번호 확인">
										<span></span>
									</div>
									<div class="form-group has-feedback">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="회원가입">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer style = "background-color: #000000; color: #ffffff">
		<div class = "container">
			<br>
			<div class = "row">
				<div class= "col-sm-2" style = "text-align:center;"><h5>Copyright &copy; 2017</h5><h5>성정모(jungMo Sung)</h5></div>
				<div class= "col-sm-4"><h4>대표자 소개</h4><p>저는 코딩 부스터의 대표 성정모입니다. 웹개발에 관심이 많습니다.</p></div>
				<div class = "col-sm-2"><h4 style = "text-align: center;">내비게이션</h4>
					<div class ="list-group">
						<a href = "main.jsp" class = "list-group-item">소개</a>
						<a href = "instructor.html" class = "list-group-item">강사진</a>
						<a href = "lecture.jsp" class = "list-group-item">강의</a>
						<a href = "photobook.jsp" class = "list-group-item">포토북</a>
					</div>
				</div>
				<div class = "col-sm-2"><h4 style = "text-align: center;">SNS</h4>
					<div class ="list-group">
						<a href = "https://www.facebook.com/" class = "list-group-item">페이스북</a>
						<a href = "https://www.youtube.com/" class = "list-group-item">유튜브</a>
						<a href = "https://tv.naver.com/" class = "list-group-item">네이버 TV</a>
					</div>
				</div>
				<div class = "col-sm-2"><h4 style = "text-align: center;"><span class = "glyphicon glyphicon-ok"></span>&nbsp;by 성정모</h4></div>
			</div>
		</div>
	</footer>
	<script type = "text/javascript">
	var str = "<%= session.getAttribute("user") %>"
	console.log(str);
	if(str === "true"){
		Swal.fire({
			  position: 'top',
			  type: 'error',
			  title: '중복된 아이디입니다!',
			  showConfirmButton: false,
			  timer: 1500
			});
	}else if(str === "false"){
		Swal.fire({
			  position: 'top',
			  type: 'success',
			  title: '사용가능한 아이디입니다!',
			  showConfirmButton: false,
			  timer: 1500
			});
	}else if(str === "space"){
		Swal.fire({
			  position: 'top',
			  type: 'warning',
			  title: '아이디를 입력하고 확인하세요!',
			  showConfirmButton: false,
			  timer: 1500
			});
	}
	<%
	session.removeAttribute("user");
	%>
	
	$("#btn").bind({ // 아이디 중복 검사
		click : function(){
			var value = $("#btn").siblings("input").val();
			var form = document.createElement("form");
			var input = document.createElement("input");
			
			form.appendChild(input);
			document.body.appendChild(form);
			
			var $form = $(form);
			var $input = $(input);
			
			$form.attr({
				action : "overlapInspect.jsp",
				method : "post"
			});
			
			$input.attr({
				type : "text",
				name : "username"
			});
			
			$input.val(value);
			$form.submit();
		}
	})
	$.validator.addMethod(
		"usernameck",
		function(value,element){
			console.log(value);
			return this.optional(element)
				|| /^[a-zA-Z\d _]{2,8}$/.test(value);
		}, "영문자와 숫자를 입력하세요."
	);
	
	$(function() {
		$("#register-form").validate({
			rules : {
				username : {
					required : true,
					minlength : 2,
					maxlength : 8,
					usernameck : true
				},
				password : {
					required : true,
					minlength : 8
				},
				confirmpassword : {
					required : true,
					equalTo : "#password1"
				},
				email : {
					required : true,
					email : true
				}
			},
			messages : {					
				username : {
					required : function(){
						$(this)[0].currentElements.siblings("span").removeClass('glyphicon glyphicon-ok form-control-feedback');
						$(this)[0].currentElements.siblings("span").addClass('glyphicon glyphicon-remove form-control-feedback');
						return "이름을 입력하세요.";
					},
					minlength : function(){
						$(this)[0].currentElements.siblings("span").removeClass('glyphicon glyphicon-ok form-control-feedback');
						$(this)[0].currentElements.siblings("span").addClass('glyphicon glyphicon-remove form-control-feedback');
						return "2글자 이상으로 입력하세요.";
					},
					maxlength : function(){
						$(this)[0].currentElements.siblings("span").removeClass('glyphicon glyphicon-ok form-control-feedback');
						$(this)[0].currentElements.siblings("span").addClass('glyphicon glyphicon-remove form-control-feedback');
						return "8글자 이하로 입력하세요.";
					}
				},
				password : {
					required : function(){
						$(this)[0].currentElements.siblings("span").removeClass('glyphicon glyphicon-ok form-control-feedback');
						$(this)[0].currentElements.siblings("span").addClass('glyphicon glyphicon-remove form-control-feedback');
						return "암호를 입력하세요";
					},
					minlength : function(){
						$(this)[0].currentElements.siblings("span").removeClass('glyphicon glyphicon-ok form-control-feedback');
						$(this)[0].currentElements.siblings("span").addClass('glyphicon glyphicon-remove form-control-feedback');
						return "8글자 이상으로 입력하세요";
					}
				},
				confirmpassword : {
					required : function(){
						$(this)[0].currentElements.siblings("span").removeClass('glyphicon glyphicon-ok form-control-feedback');
						$(this)[0].currentElements.siblings("span").addClass('glyphicon glyphicon-remove form-control-feedback');
						return "암호를 입력하세요.";
					},
					equalTo : function(){
						$(this)[0].currentElements.siblings("span").removeClass('glyphicon glyphicon-ok form-control-feedback');
						$(this)[0].currentElements.siblings("span").addClass('glyphicon glyphicon-remove form-control-feedback');
						return "위 암호와 똑같이 입력하세요.";
					}
				},
				email : {
					required : function(){
						$(this)[0].currentElements.siblings("span").removeClass('glyphicon glyphicon-ok form-control-feedback');
						$(this)[0].currentElements.siblings("span").addClass('glyphicon glyphicon-remove form-control-feedback');
						return "이메일 주소를 입력하세요.";
					},
					email : function(){
						$(this)[0].currentElements.siblings("span").removeClass('glyphicon glyphicon-ok form-control-feedback');
						$(this)[0].currentElements.siblings("span").addClass('glyphicon glyphicon-remove form-control-feedback');
						return "이메일 형식에 맞게 입력하세요.";
					}
				}
			},
			success:function(label){
				$("label").next($("span")).removeClass('glyphicon glyphicon-remove form-control-feedback');
				$("label").next($("span")).addClass('glyphicon glyphicon-ok form-control-feedback');
				$("label").remove();
			}
		});

	    $('#login-form-link').click(function(e) {
			$("#login-form").delay(100).fadeIn(100);
	 		$("#register-form").fadeOut(100);
			$('#register-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#register-form-link').click(function(e) {
			$("#register-form").delay(100).fadeIn(100);
	 		$("#login-form").fadeOut(100);
			$('#login-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});

	});
	
	</script>
</body>
</html>