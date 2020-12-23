<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>工具夹管理系统</title>
<link type="text/css" rel="stylesheet" href="Resource/css/style.css" />
<script type="text/javascript" src="Resource/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="Resource/js/menu.js"></script>
<link rel="stylesheet" href="Resource/css/normalize.css">
<link rel="stylesheet" href="Resource/css/regist.css">
</head>
<body>
<div class="top"></div>
<div id="header">
	<div class="logo">工具夹管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href="#">${login.empname }</a></li>
			<li><a href="#">设置</a></li>
			<li><a href="exit">退出</a></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
				<!-- 管理员权限 -->
		<c:if test="${login.privilege==0 }">
	      	<li>
	          <h4 class="M1"><span></span>用户管理</h4>
	          <div class="list-item none">
	            <a href='toAddUser'>添加用户</a>
	            <a href='findUser'>全部用户</a>
	           </div>
	        </li>
        </c:if>
        
        <!-- 经理权限 -->
        <c:if test="${login.privilege==1 }">
	      	<li>
	          <h4 class="M1"><span></span>审批管理</h4>
	          <div class="list-item none">
	            <a href=''>出入库审批</a>
	            <a href=''>报修审批</a>
	            <a href=''>报废审批</a>
	            <a href=''>采购审批</a>
	           </div>
	        </li>
	        <li>
	          <h4 class="M2"><span></span>工具夹管理</h4>
	          <div class="list-item none">
	            <a href=''>添加工具夹</a>
	            <a href=''>修改工具夹</a>
	           </div>
	        </li>
        </c:if>
        
        	<!-- 普通用户权限 -->
		<c:if test="${login.privilege==2 }">
	      	<li>
	          <h4 class="M1"><span></span>工具夹申请</h4>
	          <div class="list-item none">
	            <a href=''>出入库申请</a>
	            <a href=''>采购申请</a>
	            <a href=''>报修申请</a>
	            <a href=''>报废申请</a>
	           </div>
	        </li>
        </c:if>

  </ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
					<ul>
							<li>
								<li><a href="#">欢迎登录</a></li>
						</ul>
			</div>
			<div class="main">
				<h1 style="text-align: center;margin-top: 120px;">欢迎登录,${login.empname }!</h1>
			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2020 版权所有:<a href="http://localhost:8080/FileTool" target="_blank">FileTool</a></p></div>
<script>navList(12);</script>
</body>
</html>