<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="description" content="BitHotel Template">
<meta name="keywords" content="BitHotel, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>호텔 객실 현황</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a90534caa2.js"
	crossorigin="anonymous"></script>
<!-- Css, jquery, js -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style type="text/css">

.textbox {position: relative;} 

.contact-form input {
    height: 30px;
    font-size: 16px;
    border: 1px solid #000000;
    color: #fffffff;
    background-color: #f8f9fa;
    margin-bottom: 0px;
    padding-left: 0px;
    color: #000000;
    
    }
        
	h1 {	
	
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 20px;
	
	}
	
	</style>
</head>
<body>
	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="menu-item menu-item-manager">
			<!-- style="background-color:#dfa974;"-->
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="/index"> 
							<img src="${pageContext.request.contextPath}/resources/img/logo.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="nav-menu">
							<nav class="mainmenu">
								<ul>
								<li class="active"><a href="https://business.kakao.com/"><b>고객문의사항</b></a></li>
									<li class="active"><a href="/rsrvlist"><b>예약현황</b></a></li>
									<li class="active"><a href="/productPriceChange"><b>가격변경</b></a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header End -->
	
	<!-- 예약 변경 -->
	<br>
	<h1>예약 변경</h1>
	<br>
	<form action="/roomMng" class="contact-form" method="post">
	<table align="center">
		<tr>
			<td>
				예약번호 : ${RsrvlistDTO.reservationCount}<br>
				회원ID : ${RsrvlistDTO.customerID}<br>
				객실종류 : 	${RsrvlistDTO.roomType}<br>
				객실번호 : ${RsrvlistDTO.roomNumber}<br>
				객실번호 : <input type="number" name="roomNumber"><br>
				예약인원 : ${RsrvlistDTO.roomPerson}<br>	
				예약시작일 : ${RsrvlistDTO.reservationStartDate}<br>
				예약종료일 : ${RsrvlistDTO.reservationFinishDate}<br>
				예약상태 : ${RsrvlistDTO.editState}<br>
			</td>
			</tr>
		<tr>
		<td>		
	<input type='hidden' name='reservationCount' value='${RsrvlistDTO.reservationCount}'>
	<input type='hidden' name='customerID' value='${RsrvlistDTO.customerID}'>
	<input type='hidden' name='roomType' value='${RsrvlistDTO.roomType}'>
	<input type='hidden' name='roomPerson' value='${RsrvlistDTO.roomPerson}'>
	<input type='hidden' name='reservationStartDate' value='${RsrvlistDTO.reservationStartDate}'>
	<input type='hidden' name='reservationFinishDate' value='${RsrvlistDTO.reservationFinishDate}'>
	<input type='hidden' name='editState' value='${RsrvlistDTO.editState}'>
	<input type="submit" value="수정" onclick ="alert('수정되었습니다!')">
	<input type="reset"  value="취소">
		</td>
		</tr>		
	</table>
	</form>
</body>
</html>