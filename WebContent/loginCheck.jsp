<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "page2.main.domain.Login" %>
<%@ page import = "page2.main.domain.User" %>
<%@ page import = "page2.main.service.UserService" %>
<%@ page import = "page2.main.service.UserServiceImpl" %>
<!DOCTYPE html>
<%
	String id = request.getParameter("username");
	String passWord = request.getParameter("password");
	String error = "아이디와 페스워드를 정확히 입력해주세요";
	
	UserService userService = new UserServiceImpl();
	
	request.setAttribute("error", null);
	
	User user = userService.getUser(new Login(id,passWord));
	if(user!= null && !user.equals("")){
		session.setAttribute("user", user);
%>
		<jsp:forward page = "main.jsp"/>
<%
	}else{
		request.setAttribute("error", error);
%>
		<jsp:forward page = "loginForm.jsp"/>
<%
	}
%>
