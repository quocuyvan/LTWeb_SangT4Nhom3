<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<title>Insert title here</title>
	    <link rel="stylesheet" href="/DoAnThiTracNghiem/css/reset.css" />
	    <link rel="stylesheet" href="/DoAnThiTracNghiem/css/trangchu.css" />
</head>
${className}<br>
<body>
		<div class="container">
			<div class="header">
	           <div class="usermenu"><span class="login">Bạn chưa đăng nhập. (<a href="DangNhap">Đăng nhập</a>)</span></div> <!--#usermenu-->
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

		 	<div class="content">
				<h3>EXISTING EXAM</h3>
				<c:forEach items = "${listExam}" var="Examm">
						Exam id:${Examm.getID()}<br>
						Time limit:${Examm.getTime()}<br>
						Total questions:${Examm.getSocauhoi()}<br>
						<a href="TrangKtra?id=${Examm.getID()}&time=${Examm.getTime()}&numberQuestion=${Examm.getSocauhoi()}"><input type="submit" class="button_active" value="Start"></a><br><br>
				</c:forEach>
		 	</div> <!--#content-->
			<div class="footer">
				<div class="footer-main">
					<div class="about-us">
						<h2>VỀ CHÚNG TÔI</h2>
						<p>Chúng em là nhóm 3 lớp sáng thứ 4 gồm:</p>
						<p>Văn Quốc Uy - 16110260</p>
						<p>Nguyễn Khôi - 16110125</p>
						<p>Đinh Văn Dũng - 16110550</p>
						<p>Hồ Sỹ Tuấn - 17119111</p>
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
		</div> <!--#container-->
	</body>
</html>
