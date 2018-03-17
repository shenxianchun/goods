<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    <base target="body">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="<c:url value='/css/semantic.min.css'/>" />
<style type="text/css">
*{
	margin:0;
	padding:0;
}
#top{
	width:100%;
	height:40px;
	background:#333;
}
#menu{
	height:70px;
	background:#00beb7;
}
.uii{
	text-align:center;
	line-height:70px;
}
#menu1 button:hover{
	color:blue;
}
	.top_name{
		width:502px;
		height:40px;
		position:absolute;
		right:-200px;
	}
	.top_name li{
		float:left;
		width:86px;
		height:40px;
		line-height:40px;
		color:#fff;
		list-style:none;
	}
	.top_name li a{
		color:white;
	}
</style>
  </head>
<body>
	<div id="top">
		<ul class="top_name" >
			<li align="right">管理员：</li>
			<li align="left">${sessionScope.admin.adminname }</li>
			<li align="center"><a target="_top" href="<c:url value='/adminjsps/login.jsp'/>">退出</a></li>
		</ul>
	</div>
	<div id="menu">
		<div class="uii" id="menu1">
			<a href="<c:url value='/admin/AdminCategoryServlet?method=findAll'/>"><button class="ui button">分类管理</button></a>
			<a href="<c:url value='/adminjsps/admin/book/main.jsp'/>"><button class="ui button">图书管理</button></a>
			<a href="<c:url value='/admin/AdminOrderServlet?method=findAll'/>"><button class="ui button">订单管理</button></a>
		</div>
	</div>	
</body>
</html>
