<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page import="DAL.ResultDAL"%>
<%@page import="BEAN.User"%>
    
<!DOCTYPE html>
<html lang="vi">
	<head>
	    <title>ResultCSharp</title>
	    <meta name="description" content="đây là trang kết quả môn C#" />
	    <meta charset="utf-8" />
	    <link rel="stylesheet" href="/ExamOnlineDA1/css/reset.css" />
	    <link rel="stylesheet" href="/ExamOnlineDA1/css/quiz.css" />
	</head>
	<%
		// Lấy ra username đăng nhập vào từ session
		String user = (String) session.getAttribute("username");
		int idTest= (int) session.getAttribute("id_Test");
		int point= (int) request.getAttribute("diem");
		ResultDAL rsDAL = new ResultDAL();
		rsDAL.AddResult(user, idTest, point);
	%>
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
			<form action="LoginFormServlet" method="post">
			<INPUT TYPE="text" NAME="uname" value="${username}" style="display: none">
			<INPUT TYPE="text" NAME="psw" value="${password}" style="display: none">
			<INPUT TYPE="submit" NAME="name" value="Back To Profile">
			</form>
		 	<div class="content">
		 		<form action="CsharpForward">
				<c:forEach items="${listcorrectanswer}" var = "listcorrectanswer">
					<c:forEach items = "${listansweruser}" var = "listansweruser">
						<c:if test="${listcorrectanswer.number == listansweruser.number}">
							<c:if test="${listcorrectanswer.answer == 'a'}">
									<c:if test="${listansweruser.answer == 'a'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.b}
								 		<br>
								 		${listcorrectanswer.c}
								 		<br>
								 		${listcorrectanswer.d}
								 		<br>									
									</c:if>
									
									<c:if test="${listansweruser.answer == 'b'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.b} <img alt="" src="img/incorrect.png">
								 		<br>
								 		${listcorrectanswer.c}
								 		<br>
								 		${listcorrectanswer.d}
								 		<br>			
									</c:if>
									
									<c:if test="${listansweruser.answer == 'c'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.b}
								 		<br>
								 		${listcorrectanswer.c} <img alt="" src="img/incorrect.png">
								 		<br>
								 		${listcorrectanswer.d}
								 		<br>			
									</c:if>
									
									<c:if test="${listansweruser.answer == 'd'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.b}
								 		<br>
								 		${listcorrectanswer.c}
								 		<br>
								 		${listcorrectanswer.d} <img alt="" src="img/incorrect.png">
								 		<br>			
									</c:if>
									
							</c:if>
							<c:if test="${listcorrectanswer.answer == 'b'}">
									<c:if test="${listansweruser.answer == 'a'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a} <img alt="" src="img/incorrect.png">
								 		<br>
								 		${listcorrectanswer.b} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.c}
								 		<br>
								 		${listcorrectanswer.d}
								 		<br>									
									</c:if>
									
									<c:if test="${listansweruser.answer == 'b'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a}
								 		<br>
								 		${listcorrectanswer.b} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.c}
								 		<br>
								 		${listcorrectanswer.d}
								 		<br>			
									</c:if>
									
									<c:if test="${listansweruser.answer == 'c'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a}
								 		<br>
								 		${listcorrectanswer.b} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.c} <img alt="" src="img/incorrect.png">
								 		<br>
								 		${listcorrectanswer.d}
								 		<br>			
									</c:if>
									
									<c:if test="${listansweruser.answer == 'd'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a}
								 		<br>
								 		${listcorrectanswer.b} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.c}
								 		<br>
								 		${listcorrectanswer.d} <img alt="" src="img/incorrect.png">
								 		<br>			
									</c:if>
							</c:if>
							<c:if test="${listcorrectanswer.answer == 'c'}">
									<c:if test="${listansweruser.answer == 'a'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a} <img alt="" src="img/incorrect.png">
								 		<br>
								 		${listcorrectanswer.b} 
								 		<br>
								 		${listcorrectanswer.c} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.d}
								 		<br>									
									</c:if>
									
									<c:if test="${listansweruser.answer == 'b'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a}
								 		<br>
								 		${listcorrectanswer.b} <img alt="" src="img/incorrect.png">
								 		<br>
								 		${listcorrectanswer.c} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.d}
								 		<br>			
									</c:if>
									
									<c:if test="${listansweruser.answer == 'c'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a}
								 		<br>
								 		${listcorrectanswer.b}
								 		<br>
								 		${listcorrectanswer.c} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.d}
								 		<br>			
									</c:if>
									
									<c:if test="${listansweruser.answer == 'd'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a}
								 		<br>
								 		${listcorrectanswer.b}
								 		<br>
								 		${listcorrectanswer.c} <img alt="" src="img/correct.png">
								 		<br>
								 		${listcorrectanswer.d} <img alt="" src="img/incorrect.png">
								 		<br>			
									</c:if>
							</c:if>
							<c:if test="${listcorrectanswer.answer == 'd'}">
									<c:if test="${listansweruser.answer == 'a'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a} <img alt="" src="img/incorrect.png">
								 		<br>
								 		${listcorrectanswer.b} 
								 		<br>
								 		${listcorrectanswer.c}
								 		<br>
								 		${listcorrectanswer.d} <img alt="" src="img/correct.png">
								 		<br>									
									</c:if>
									
									<c:if test="${listansweruser.answer == 'b'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a}
								 		<br>
								 		${listcorrectanswer.b} <img alt="" src="img/incorrect.png">
								 		<br>
								 		${listcorrectanswer.c}
								 		<br>
								 		${listcorrectanswer.d} <img alt="" src="img/correct.png">
								 		<br>			
									</c:if>
									
									<c:if test="${listansweruser.answer == 'c'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a}
								 		<br>
								 		${listcorrectanswer.b}
								 		<br>
								 		${listcorrectanswer.c} <img alt="" src="img/incorrect.png">
								 		<br>
								 		${listcorrectanswer.d} <img alt="" src="img/correct.png">
								 		<br>			
									</c:if>
									
									<c:if test="${listansweruser.answer == 'd'}">
							 			<p>${listcorrectanswer.number}.${listcorrectanswer.questname}</p>
								 		${listcorrectanswer.a}
								 		<br>
								 		${listcorrectanswer.b}
								 		<br>
								 		${listcorrectanswer.c}
								 		<br>
								 		${listcorrectanswer.d} <img alt="" src="img/correct.png">
								 		<br>			
									</c:if>
							</c:if>
						</c:if>
					</c:forEach>
				</c:forEach>
					<br>
					 Kết quả: ${socaudung}/${numberQuestion}
					 Điểm: ${diem}
					 <br>
					<input type="submit" value="In"/>
				</form>
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
