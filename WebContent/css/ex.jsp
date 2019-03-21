<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<style type = "text/css">
.popover{
 	left: 150px !important;
}
.popover-title { 
    color: blue; 
    font-size: 15px;
    width:100px;
    height:50px;
} 
.popover-content { 
    color: red; 
    font-size: 10px; 
} 
</style>
<div class = "container">	
	<h3>Popover Close</h3>
	<a href = "#" title = "제목" data-toggle = "popover" data-trigger = "focus" data-content = "내용">Click me</a>
	<a href = "#" title = "제목" data-toggle = "popover" data-trigger = "hover" data-content = "내용"> Click me</a>
</div>


<script>
$(document).ready(function(){
	$('[data-toggle="popover"]').popover();	
});
</script>
</body>
</html>