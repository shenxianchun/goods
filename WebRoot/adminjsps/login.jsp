<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理员登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="<c:url value='/css/semantic.min.css'/>" />
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript">
		function checkForm() {
			if(!$("#adminname").val()) {
				alert("管理员名称不能为空！");
				return false;
			}
			if(!$("#adminpwd").val()) {
				alert("管理员密码不能为空！");
				return false;
			}
			return true;
		}
	</script>
	<style type="text/css">
	body{margin:0;padding:0;background-color:#00beb7;color:#646464;font-family: "微软雅黑";}
	.title{
		height:50px;
		margin:0 auto;
		text-align:center;
		font-size:30px;
		color:#fff;
		line-height:50px;
	}
	.main{
		width:500px;
		height:400px;
		background:#bfefed;
		margin:0 auto;
		margin-top:10px;
		padding-top:50px;
		text-align:center;
	}
	.in{
		width:300px;
	}
	.sub{
		width:100px;
	}
	.registered{
		width:500px;
		height:400px;
		background:#bfefed;
		margin:0 auto;
		display:none;
	}
	.r_top{
		width:500px;
		height:50px;
	}
	.parent, .teach{
		width:250px;
		height:50px;
		border:1px solid #555;
		text-align:center;
		line-height:50px;
		font-size:16px;
		color:white;
		background:#32b16c;
		float:left;
		border-bottom:none;
		cursor:pointer;
	}
	.teach{
		border-left:none;
	}
	.form{
		width:500px;
		height:350px;
		border:1px dotted #555;
	}
</style>
	
	
  </head>
  
  <body>

	<div class="title"></div>
	<div class="main">
		<div class="l_count">
			<button class="ui blue button" id="ub">欢迎来到书店管理登陆中心</button><br/><br/>
			<form action="<c:url value='/AdminServlet'/>" method="post" onsubmit="return checkForm()" target="_top">
				<input type="hidden" name="method" value="login"/>
				<div class="ui input">
				  <input type="text" class="in" placeholder="请输账号" name="adminname" value="" id="adminname"/>
				</div><br/><br/>
				<div class="ui input">
				  <input type="password" class="in" placeholder="密码" name="adminpwd" id="adminpwd"/>
				</div>
				<br/><br/>
				<div class="ui buttons">
				  <input type="submit" class="sub ui red button" id="sub" value="登陆">
				  <div class="or"></div>
				  <input type="reset" class="sub ui positive button" value="重置">
				</div>
			</form>
		</div>
	</div>

</body>
</html>
