<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
    <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
	    <title>HienThiDanhSach</title>
	    <meta charset="utf-8" />
	    <link rel="stylesheet" href="/DoAnThiTracNghiem/css/reset.css" />
	    <link rel="stylesheet" href="/DoAnThiTracNghiem/css/menu.css" />
</head>
 	<body>

		<div class="container">

			<div class="menu">
				<ul>
					<li><h2>QL Thí Sinh</h2></li>
					<li><a href="${pageContext.request.contextPath}/DSthisinh">Danh sách thí sinh</a></li>
					<li><a href="DangNhap">Đăng Xuất</a></li>
				</ul>
			</div> <!--#menu-->

			<div class="content">
<%-- 			   <a href="${pageContext.request.contextPath}/DSthisinh">Danh sach thi sinh</a>
			   <br> --%>
   			   <br>
				<table border="1">
				<tr>
				<th style="width: 150px; ">UserName</th>
				<th style="width: 296px; ">Full name</th>
				</tr>
					<c:forEach items = "${l_thisinh}" var="thisinh">
							<tr>
							<td><center>${thisinh.username}</center></td>
							<td><center>${thisinh.fullname}</center></td>
							</tr>
					</c:forEach>
					
				</table>
				   <br>
				   <a href="${pageContext.request.contextPath}/add_ts">Thêm thí sinh</a>|
				   <a href="${pageContext.request.contextPath}/edit_ts">Sửa thí sinh</a>|
				   <a href="${pageContext.request.contextPath}/del_ts">Xóa thí sinh</a>
			   <br>
			<h2></h2>
			</div> <!--#content-->

		</div> <!--#container-->

 	</body>
</html>