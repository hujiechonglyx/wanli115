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
				<div class="mysearch">
					<table   width="100%" align="center" bgColor="#f5fafe" border="0">
						<tr>
							<td colspan="5" class="ta_01" align="center" bgColor="#afd1f3"><strong>员工查询</strong></td>
						<tr>
						<tr>
							<form action="findUser" method="post">
								<tr>
										<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
											员工姓名名称：</td>
										<td class="ta_01" bgColor="#ffffff"><input type="text"
											name="empname" size="15" value="" class="bg" /></td>
										<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
											部门：</td>
										<td class="ta_01" bgColor="#ffffff"><input type="text"
											name="department" size="15" value="" class="bg" /></td>
											
										<td align="right" bgColor="#ffffff" class="ta_01"><input
										type="submit" name="search" value="&#26597;&#35810;"
										class="button_view"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="reset" name="reset" value="&#37325;&#32622;"
										class="button_view" /></td>
									    </td>
								</tr>
							</form>
						</tr>
					</table>
					
				</div>

				<div class="wrap">
					    <table width="100%">
					        <thead>
					            <tr>
					                <th width="4%">
					                    <input type="checkbox" id="j_cbAll" />
					                </th>
					                <th width="15%">用户名</th>
					                <th width="10%">员工姓名</th>
					                <th width="20%">邮箱</th>
					                <th width="20%">部门</th>
					                <th width="15%">权限</th>
					                <th width="10%">查看详情</th>
					                <th width="10%">删除</th>
					            </tr>
					        </thead>
					        <tbody id="j_tb">
					        <c:forEach items="${users }" var="user">
					            <tr style="text-align: center;">
					                <td width="4%">
					                    <input type="checkbox" />
					                </td>
					                <td width="15%">${user.username }</td>
					                <td width="10%">${user.empname }</td>
					                <td width="20%">${user.email }</td>
					                <td width="20%">${user.department }</td>
					                <td width="15%">
					                	<c:if test="${user.privilege==0 }">
					                		管理员
					                	</c:if>
					                	<c:if test="${user.privilege==1 }">
					                		经理
					                	</c:if>
					                	<c:if test="${user.privilege==2 }">
					                		员工
					                	</c:if>
					                </td>
					                <td width="10%">
					                	<a href="toModifyUser?userid=${user.userid }">查看</a>
									</td>
					                <td width="10%">
					                	<a href="delUser?userid=${user.userid }">删除</a>
									</td>
					            </tr>				
					        </c:forEach>
					        </tbody>
					        <tr>
					        	<td colspan="9">
					        		<input type="submit" value="批量删除">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="findUser?pn=1">首页</a>
									<a href="findUser?pn=${info.prePage }">上一页</a>
									<c:forEach items="${info.navigatepageNums }" var="num">
										<c:if test="${num == info.pageNum }">
											【${num }】
										</c:if>
										<c:if test="${num != info.pageNum }">
											<a href="findUser?pn=${num }">${num }</a>
										</c:if>
									</c:forEach>
									<a href="findUser?pn=${info.nextPage }">下一页</a>
									<a href="findUser?pn=${info.pages }">末页</a>
								</td>
							</tr>
					    </table>
					</div>

			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2020 版权所有:<a href="http://localhost:8080/FileTool" target="_blank">FileTool</a></p></div>
<script>navList(12);</script>
</body>
</html>