<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "page2.main.domain.User" %>
<%@ page import = "page2.main.service.UserService" %>
<%@ page import = "page2.main.service.UserServiceImpl" %>
<%@ page import = "java.lang.Exception" %>
<!DOCTYPE html>
<%
	request.removeAttribute("idWord");
	request.removeAttribute("passwordWord");
	request.removeAttribute("confirmWord");
	request.removeAttribute("emailWord");

	String id = request.getParameter("username");
	String passWord = request.getParameter("password");
	String confirm = request.getParameter("confirmpassword");
	String email = request.getParameter("email");
	
	UserService userService = new UserServiceImpl();
	if((id != null && !id.equals("")) && (passWord != null && !passWord.equals("")) && (confirm != null && !confirm.equals("")) && (email != null && !email.equals("")) && passWord.equals(confirm)){
		if(passWord.equals(confirm)){
				boolean flag = userService.join(new User(0,id,passWord,email,null));
				if(flag == false){
					request.setAttribute("idWord", "중복된 아이디입니다.");
%>
						<jsp:forward page = "registerForm.jsp"/>
<%
				}
		}else{
		if(id == null || id.equals("") ){
			request.setAttribute("id", "아이디를 입력하세요!");
		}
		if(passWord == null || passWord.equals("")){
			request.setAttribute("password", "비밀번호를 입력하세요!");
		}
		if(confirm==null || confirm.equals("")){
			request.setAttribute("confirm", "비밀번호를 재입력해주세요!");
		}else if((passWord == null || passWord.equals("")) && !passWord.equals(confirm)){
			request.setAttribute("confirm", "비밀번호를 입력하지않았습니다!");
		}else{
			request.setAttribute("confirm", "비밀번호와 같지 않습니다.다시 입력해주세요!");
		}
		if(email == null || email.equals("")){
			request.setAttribute("email", "이메일을 입력하세요!");
		}
%>
			<jsp:forward page = "registerForm.jsp"/>
<%
		}
	}
%>
<jsp:forward page = "main.jsp"/>