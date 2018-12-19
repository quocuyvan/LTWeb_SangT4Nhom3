<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="DAL.LoginDAL"%>
<%@page import="BEAN.User"%>
<!DOCTYPE html>

<html lang="vi">
	<head>
	    <title>TrangChu</title>
	    <meta name="description" content="đây là trang chủ" />
	    <meta charset="utf-8" />
	    <title>Home</title>
	    <link rel="stylesheet" href="/DoAnThiTracNghiem/css/reset.css" />
	    <link rel="stylesheet" href="/DoAnThiTracNghiem/css/trangchu.css" />
	</head>
		<%
		// Lấy ra username đăng nhập vào từ session
		String user = (String) session.getAttribute("username");
		LoginDAL userDAL = new LoginDAL();
		User u = userDAL.getUser(user);
		%>
	<body>
		<div class="container">
			<div class="header">
	           <div class="usermenu"><span class="login"><%=u.getFullname()%> (<a href="TrangChu">Đăng xuất</a>)</span></div> <!--#usermenu-->
	           <div class="header-main">
	           		<div class="image"><a href="TrangChu"><img src="/DoAnThiTracNghiem/img/spkt-banner.jpg"></a></div>
	           		<div class="intro">
	           			<h3>HỆ THỐNG THI TRẮC NGHIỆM TRỰC TUYẾN</h3>
	           			<h4>BÀI TẬP LỚN MÔN LẬP TRÌNH WEB</h4>
	           			<h4>NHÓM 3 LỚP SÁNG THỨ 4</h4>
	           			<span>&#9742 <i>Call Us:  0799404185 - 0933807198</i></span>
           				<span>&#9993 <i>Email: quocuyvan1902@gmail.com</i></span>
	           			<span>
	           		</div>
	           </div> <!--#header-main-->
			</div> <!--#header-->
		 	<div class="row">
		 		<div id="box1" class="col">
		 			<a href="#"><img src="/DoAnThiTracNghiem/img/algebra.png" width="300px" height="300px" /></a>
		 			<h2><a href="HienThiTrangMon?id=2&name=Math">Math</a></h2>
		 		</div> <!--#box2-->
		 		<div id="box2" class="col">
		 			<a href="#"><img src="/DoAnThiTracNghiem/img/physic.png" width="300px" height="300px" /></a>
		 			<h2><a href="HienThiTrangMon?id=5&name=Physics">Physics</a></h2>
		 		</div> <!--#box2-->
		 		<div id="box3" class="col">
		 			<a href="#"><img src="/DoAnThiTracNghiem/img/Geography.png" width="300px" height="300px" /></a>
		 			<h2><a href="HienThiTrangMon?id=6&name=Geography">Geography</a></h2>
		 		</div> <!--#box3-->
		 	</div> <!--#row-->
		 	<div class="content">
			<div class="footer">
				<div class="footer-main">
					<div class="about-us">
						<h2>VỀ CHÚNG TÔI</h2>
						<p>Chúng em là nhóm 3 lớp sáng thứ 4 gồm:</p>
						<p>Văn Quốc Uy - 16110260</p>
						<p>Nguyễn Khôi - 16110125</p>
						<p>xxx - ccc</p>
						<p>xxx - ccc</p>
					</div> <!--#about-us-->
					<div class="contact-us">
						<h2>VỀ CHÚNG TÔI</h2>
						<p>1 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức, Thành phố Hồ Chí Minh</p>
	           			<p>&#9742 Phone:  0799404185 - 0933807198</p>
	           			<p>&#9993 E-mail:  quocuyvan1902@gmail.com</p>
					</div> <!--#contact-us-->
				</div> <!--#footer-main-->
				<div class="footer-bottom">
					<p>Copyright © 2018, <a href="https://www.facebook.com/quocuy.van">Nhóm 3 lớp sáng thứ 4 môn lập trình web. </a> All Rights Reserved. Powered by QuocUyVan.</p>
				</div>
			</div> <!--#footer-->
		 	</div> <!--#content-->
		</div> <!--#container-->
	</body>
</html>
