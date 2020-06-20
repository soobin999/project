<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="BitHotel Template">
<meta name="keywords" content="BitHotel, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>BitHotel</title>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
<style type="text/css">
</style>
</head>

<body>
	<!-- Page Preloder -->

	<!-- Offcanvas Menu Section Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="canvas-open">
		<i class="icon_menu"></i>
	</div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<i class="icon_close"></i>
		</div>
		<div class="   -icon  search-switch">
			<i class="fas fa-search"></i>
		</div>

		<nav class="mainmenu mobile-menu">
			<ul>
				<li class="active"><a href="/index">Home</a></li>
				<li><a href="/rooms">Rooms</a></li>
				<li><a href="/about-us">About Us</a></li>
				<li><a href="/pages">MyPages</a>
					<ul class="dropdown">
						<li><a href="/room-details"></a></li>
						<li><a href="#">예약확인</a></li>
						<li><a href="#">개인정보수정</a></li>
					</ul></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>

		<ul class="top-widget">
			<li><i class="fa fa-phone"></i> (12) 345 67890</li>
			<li><i class="fa fa-envelope"></i> abc@gmail.com</li>
		</ul>
	</div>
	<!-- Offcanvas Menu Section End -->
	
	
	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="top-nav">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<ul class="tn-left">
							<li><i class="fa fa-phone"></i> (12) 345 67890</li>
							<li><i class="fa fa-envelope"></i> abc@gmail.com</li>
						</ul>
					</div>

					<div class="col-lg-6">
						<div class="tn-right">
							<a href="javascript:void chatChannel()"> <img
								src="https://developers.kakao.com/assets/img/about/logos/channel/consult_small_yellow_pc.png" />
							</a>
							<script type='text/javascript'>
								Kakao.init('3fee6e85028ad6b8b0eef0c6b0f535e8');
								function chatChannel() {
									Kakao.Channel.chat({
										channelPublicId : '_CNxowxb'
									});
								}
							</script>
							<a href="/login" class="bk-btn" id="signup">회원가입</a> <a
								href="/signUp" class="bk-btn" id="login">로그인</a> <a
								href="/logout" class="bk-btn" id="logout">로그아웃</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="menu-item">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="/index"> <img
								src="${pageContext.request.contextPath}/resources/img/logo.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="nav-menu">
							<nav class="mainmenu">
								<ul>
									<li class="active"><a href="/index">Home</a></li>
									<li><a href="/rooms">Rooms</a></li>
									<li><a href="/about-us">About Us</a></li>
									<li><a href="/pages">MyPages</a>
										<ul class="dropdown">
											<li><a href="/room-details">예약확인</a></li>
											<li><a href="/blog-details">개인정보수정</a></li>
										</ul></li>

								</ul>
							</nav>
							<div class="nav-right search-switch">
								<i class="fas fa-search"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header End -->
	<!-- 여기에 사이에 만들면 됩니다. -->


 <!-- Breadcrumb Section Begin -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>Our Room</h2>
                        <div class="bt-option">
                            <a href="./home.html">Home</a>
                            <span>Rooms</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->

<!-- Room Details Section Begin -->
    <section class="room-details-section spad" #>
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="room-details-item">
                        <img src="${pageContext.request.contextPath}${room.roomPicture}" alt="">
                        <div class="rd-text">
                        <c:if test="${room.roomTypeCount == 1}">
		                    <h3>Family Room</h3><br>
		                </c:if>
		                <c:if test="${room.roomTypeCount == 2}">
		                    <h3>Standard Room</h3><br>
		                </c:if>
		                <c:if test="${room.roomTypeCount == 3}">
		                    <h3>Double Room</h3><br>
		                </c:if>
		                <c:if test="${room.roomTypeCount == 4}">
		                    <h3>Premium Room</h3><br>
		                </c:if>
		                <c:if test="${room.roomTypeCount == 5}">
		                    <h3>Suite Room</h3><br>
		                </c:if>
                            <div class="rd-title">
                                <h3>Our Rate</h3>
                                <div class="rdt-right">
                                    <div class="rating">
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star-half_alt"></i>
                                    </div>
                                </div>
                            </div>
                            <h2>￦${totalAmount}<span>/Total price</span></h2>
                            <table>
                                <tbody>
                                
                                	<tr>
                                        <td class="r-o">Check in:</td>
                                        <td>${sessionScope.reservationDTO.reservationStartDate}</td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="r-o">Check out:</td>
                                        <td>${sessionScope.reservationDTO.reservationFinishDate}</td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="r-o">Size:</td>
                                        <td>30 ft</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">Persons:</td>
                                        <td>${sessionScope.reservationDTO.roomPerson}</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">Bed:</td>
                                        <td>King Beds</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">Services:</td>
                                        <td>Wifi, Television, Bathroom,...</td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                            <p class="f-para">${room.roomInformation}</p>
                            <p class="f-para">Motorhome or Trailer that is the question for you. Here are some of the
                                advantages and disadvantages of both, so you will be confident when purchasing an RV.
                                When comparing Rvs, a motorhome or a travel trailer, should you buy a motorhome or fifth
                                wheeler? The advantages and disadvantages of both are studied so that you can make your
                                choice wisely when purchasing an RV. Possessing a motorhome or fifth wheel is an
                                achievement of a lifetime. It can be similar to sojourning with your residence as you
                                search the various sites of our great land, America.</p>
                            <p>The two commonly known recreational vehicle classes are the motorized and towable.
                                Towable rvs are the travel trailers and the fifth wheel. The rv travel trailer or fifth
                                wheel has the attraction of getting towed by a pickup or a car, thus giving the
                                adaptability of possessing transportation for you when you are parked at your campsite.
                            </p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="room-booking">
                        <h3>Your Reservation</h3>
                        <form action='/payment.do' method='post' name='paychoice'>

								<div class="check-date">
									<label for="name">이름:</label> <input type='text'
										name='buyerName' required>
								</div>
								<div class="check-date">
									<label for="Tel">전화번호:</label> <input type='text'
										name='buyerTel' required>
								</div>
								<div class="check-date">
									<label for="addr">주소:</label> <input type='text'
										name='buyerAddr' required>
								</div>
								<div class="check-date">
									<label for="이메일">이메일:</label> <input type='email'
										name='buyerEmail' required>
								</div>
								<div class="check-date">
									<label for="이메일">우편번호:</label> <input type='text'
										name='buyerPostcode' required>
								</div>
								<div class="select-option">
									<label for="guest">결제수단:</label> <select id="guest" name="pg">
										<option value='card'>신용카드</option>
										<option value='samsung'>삼성페이</option>
										<option value='trans'>실시간계좌이체</option>
										<option value='vbank'>가상계좌</option>
										<option value='phone'>휴대폰소액결제</option>
									</select>
								</div>
								<div class="select-option">
									<label for="guest">결제방법:</label> <select name='paymentMethod'
										id="guest">
										<option value='html5_inicis'>이니시스</option>
										<option value='kakao'>카카오페이</option>
										<option value='nice'>나이스페이</option>
										<option value='jtnet'>제이티넷</option>
										<option value='uplus'>LG유플러스</option>
										<option value='danal'>다날</option>
										<option value='payco'>페이코</option>
										<option value='syrup'>시럽페이</option>
										<option value='paypal'>페이팔</option>
									</select>
								</div>
								<button type="submit">결제하기</button>
								<input type='hidden' name='reservationStartDate'
									value='${sessionScope.reservationDTO.reservationStartDate}'>
								<input type='hidden' name='reservationFinishDate'
									value="${sessionScope.reservationDTO.reservationFinishDate}">
								<input type='hidden' name='totalAmount' value="${totalAmount}">
								<input type="hidden" name="room.roomPerson"
									value="${sessionScope.reservationDTO.roomPerson}">
									<input type="hidden" name="room.roomTypeTable.roomTypeCount" 
									value="${room.roomTypeCount}">
							</form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Room Details Section End -->

	<!-- 여기에 사이에 만들면 됩니다. -->
	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="container">
			<div class="footer-text">
				<div class="row">
					<div class="col-lg-4">
						<div class="ft-about">
							<div class="logo">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/resources/img/footer-logo.png"
									alt="">
								</a>
							</div>
							<p>
								We inspire and reach millions of travelers<br /> across 90
								local websites
							</p>

						</div>
					</div>
					<div class="col-lg-3 offset-lg-1">
						<div class="ft-contact">
							<h6>Contact Us</h6>
							<ul>
								<li>(12) 345 67890</li>
								<li>abc@gmail.com</li>
								<li>856 Cordia Extension Apt. 356, Lake, United State</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 offset-lg-1">
						<div class="ft-newslatter">
							<h6>New latest</h6>
							<p>Get the latest updates and offers.</p>
							<form action="#" class="fn-form">
								<input type="text" placeholder="Email">
								<button type="submit">
									<i class="fa fa-send"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright-option">
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<ul>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Terms of use</a></li>
							<li><a href="#">Privacy</a></li>
							<li><a href="#">Environmental Policy</a></li>
						</ul>
					</div>
					<div class="col-lg-5">
						<div class="co-text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">
				<i class="icon_close"></i>
			</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/soobin.js"></script>
</body>

</html>