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
<title>관리자 페이지</title>

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

<!-- Css Styles -->
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
<!-- 테이블 스타일 -->
<style type="text/css">
	
	table {
	margin-left: Auto;
	margin-right: Auto;
	border : 1px solid #dfa974;
	text-align: center;
	padding : 10px;
	}
	
	th,td {
	
	border : 1px solid #dfa974;
	
	}

	h1 {
	
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 40px;
	
	}
		
	</style>


<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="menu-item menu-item-manager"><!-- style="background-color:#dfa974;"-->
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
	<!-- 예약리스트 -->
	<br>
	<h1>예약 전체 현황</h1>
	<table>
		<thead>
			<th>예약번호</th><th>회원ID</th><th>객실종류</th><th>객실번호</th><th>예약인원</th>
			<th>예약시작일</th><th>예약종료일</th><th>예약상태</th><th>예약변경</th>
		</thead>
			<tbody>
				<c:forEach items="${rsrvlistDTOs}" var="rsrvDTO" varStatus="status">
				<tr>
					<td>${rsrvDTO.reservationCount}</td> 
					<td>${rsrvDTO.customerID}</td>
					<td>${rsrvDTO.roomType}</td>
					<td>${rsrvDTO.roomNumber}</td>
					<td>${rsrvDTO.roomPerson}</td>					
					<td>${rsrvDTO.reservationStartDate}</td>
					<td>${rsrvDTO.reservationFinishDate}</td>
					<td>${rsrvDTO.editState}</td>
				 <td><a id="roomedit" href="<c:url value='/roomMng/${rsrvDTO.reservationCount}/${rsrvDTO.customerID}/${rsrvDTO.roomType}/${rsrvDTO.roomNumber}/${rsrvDTO.roomPerson}/${rsrvDTO.reservationStartDate}/${rsrvDTO.reservationFinishDate}/${rsrvDTO.editState}'/>">변경</a></td> 
				</tr>
				</c:forEach>
			</tbody>
	</table>
	</body>
</html>