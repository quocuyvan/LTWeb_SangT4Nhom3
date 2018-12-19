<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>The Exam</title>
	    <link rel="stylesheet" href="/DoAnThiTracNghiem/css/reset.css" />
	    <link rel="stylesheet" href="/DoAnThiTracNghiem/css/trangchu.css" />
</head>
<h2>${msg}</h2>
<% int i =1; %>
   <script type="text/javascript">
        function noBack() {
        	window.forward("trangchu.jsp");
        }
    </script>
<script language="javascript">
// Created by: Neill Broderick :: http://www.bespoke-software-solutions.co.uk/downloads/downjs.php

var mins
var secs;

function cd() {
 	mins = 1 * ${time}; // change minutes here
 	secs = 0 + s(":01"); // change seconds here (always add an additional second to your total)
 	redo();
}

function s(obj) {
 	for(var i = 0; i < obj.length; i++) {
  		if(obj.substring(i, i + 1) == ":")
  		break;
 	}
 	return(obj.substring(i + 1, obj.length));
}

function dis(mins,secs) {
 	var disp;
 	if(mins <= 9) {
  		disp = " 0";
 	} else {
  		disp = " ";
 	}
 	disp += mins + ":";
 	if(secs <= 9) {
  		disp += "0" + secs;
 	} else {
  		disp += secs;
 	}
 	return(disp);
}

function redo() {
 	secs--;
 	if(secs == -1) {
  		secs = 59;
  		mins--;
 	}
 	document.cd.disp.value = dis(mins,secs); // setup additional displays here.
 	if((mins == 0) && (secs == 0)) {
  		window.alert("Time is up. Press OK to continue."); // change timeout message as required
  		// window.location = "yourpage.htm" // redirects to specified page once timer ends and ok button is pressed
 	} else {
 		cd = setTimeout("redo()",1000);
 	}
}

function init() {
  cd();
}
window.onload = init;
</script>
<body>
		<div class="container">
			<div class="header">
	           <div class="usermenu"><span class="login"> </span></div> <!--#usermenu-->
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
			 	<form name="cd">
						<input id="txt" readonly="true" type="text" border="0" name="disp">
				</form>
				<form action="ResultController" method= get ">
				<table>
					<c:forEach items = "${listCauhoi}" var="Cauhoi">
			
							<p><% out.println(i); %>)${Cauhoi.questname}</p>
				 		<input type="radio" name="ans[<%=i%>]" value="a"> ${Cauhoi.a}
				 		<br>
				 		<input type="radio" name="ans[<%=i%>]" value="b"> ${Cauhoi.b}
				 		<br>
				 		<input type="radio" name="ans[<%=i%>]" value="c"> ${Cauhoi.c}
				 		<br>
				 		<input type="radio" name="ans[<%=i%>]" value="d"> ${Cauhoi.d}
				 		<br>
				 		<% i++; %>
					</c:forEach>
				</table>
				
			</body>
			<INPUT TYPE="text" NAME="firstbox" value="${numberQuestion}" style="display: none">
			<INPUT TYPE="text" NAME="secondbox" value="${time}" style="display: none">
							<div class=create>
								
									<input type="submit" name = "name" value= "Submit">
							
							</div> <!--#create-->
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
