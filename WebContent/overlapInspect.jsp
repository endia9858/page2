<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "page2.main.domain.User" %>
<%@ page import = "page2.main.service.UserService" %>
<%@ page import = "page2.main.service.UserServiceImpl" %>
<%@ page import = "java.lang.Exception" %>
<!DOCTYPE html>
<%
	UserService userService = new UserServiceImpl();
	String str = request.getParameter("username");
	if(str.equals("")){
		session.setAttribute("user", "space");
%>
			<c:redirect url = "registerForm.jsp"/>
<%
	}
	User user1 = userService.search(str);
	
	if(user1 != null){
		session.setAttribute("user", true);
	}else{
		session.setAttribute("user", false);
	}
%>
<c:redirect url = "registerForm.jsp"/>