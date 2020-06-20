<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<meta charset="UTF-8">
	<meta name="description" content="Sona Template">
	<meta name="keywords" content="Sona, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Sona | Template</title>
	
	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">
	
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
        <div class="search-icon search-switch">
            <i class="icon_search"></i>
        </div>
        <div class="header-configure-area">
            <div class="language-option">
                <img src="${pageContext.request.contextPath}img/flag.jpg" alt="">
                <span>EN <i class="fa fa-angle-down"></i></span>
                <div class="flag-dropdown">
                    <ul>
                        <li><a href="#">Zi</a></li>
                        <li><a href="#">Fr</a></li>
                    </ul>
                </div>
            </div>
            <a href="#" class="bk-btn">Booking Now</a>
        </div>
        <nav class="mainmenu mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./rooms.html">Rooms</a></li>
                <li><a href="./about-us.html">About Us</a></li>
                <li><a href="./pages.html">Pages</a>
                    <ul class="dropdown">
                        <li><a href="./room-details.html">Room Details</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                        <li><a href="#">Family Room</a></li>
                        <li><a href="#">Premium Room</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">News</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="top-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-tripadvisor"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
        <ul class="top-widget">
            <li><i class="fa fa-phone"></i> (12) 345 67890</li>
            <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
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
							<a href="/signUp" class="bk-btn" id="signup">회원가입</a>
							<a href="/login" class="bk-btn" id="login">로그인</a> 
							<a href="/logout" class="bk-btn" id="logout">로그아웃</a>
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
									<li class="active"><a href="/index">Home</a></li>
									<li><a href="/rooms">Rooms</a></li>
									<li><a href="/about-us">About Us</a></li>
									<li><a href="/myPage">MyPages</a>
										<ul class="dropdown">
											<li><a href="/reservationConfirm">예약확인</a></li>
											<li><a href="/customerModify">개인정보수정</a></li>
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

    <!-- Breadcrumb Section Begin -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>Our Rooms</h2>
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
    
    <div class="search-bar" align="center">
	  <form action="search" method="post">
		<div class="booking-form">
			<label for="date-in">Check In:</label><input class="date-input" id="date-in" type="text" name="reservationStartDate" required="required" value="${reservationDTO.reservationStartDate}">
			<label for="date-out">Check Out:</label> <input class="date-input" id="date-out" type="text" name="reservationFinishDate" required="required" value="${reservationDTO.reservationFinishDate}">
			<label for="guest">Guests:</label><input type="number" name="roomPerson" required="required" value="${reservationDTO.roomPerson}">
			<button type="submit">search</button>
		</div>
	  </form>
	</div>
	
		<c:if test="${not empty search}">
			<section class="rooms-section spad">
		        <div class="container">
		            <div class="row">
		            <c:forEach items="${search}" var="search">
		                <div class="col-lg-4 col-md-6">
		                    <div class="room-item">
		                        <img src="${pageContext.request.contextPath}${search.roomPicture}" alt="">
		                        <div class="ri-text">
		                        	<c:if test="${search.roomTypeCount == 1}">
		                            	<h4>Family Room</h4>
		                            </c:if>
		                            <c:if test="${search.roomTypeCount == 2}">
		                            	<h4>Standard Room</h4>
		                            </c:if>
		                            <c:if test="${search.roomTypeCount == 3}">
		                            	<h4>Double Room</h4>
		                            </c:if>
		                            <c:if test="${search.roomTypeCount == 4}">
		                            	<h4>Premium Room</h4>
		                            </c:if>
		                            <c:if test="${search.roomTypeCount == 5}">
		                            	<h4>Suite Room</h4>
		                            </c:if>
		                            <h3>￦${search.roomPrice}<span>/Pernight</span></h3>
		                            <table>
		                                <tbody>
		                                    <tr>
		                                        <td class="r-o">Size:</td>
		                                        <td>30 ft</td>
		                                    </tr>
		                                    <tr>
		                                        <td class="r-o">Capacity:</td>
		                                        <td>Max persion  ${search.roomPerson}</td>
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
		                            <a class="primary-btn" href="<c:url value='/reservationRoom/${search.roomPerson}/${search.roomPrice}/${reservationDTO.reservationStartDate}/${reservationDTO.reservationFinishDate}'/>"> Book</a>
		                        </div>
		                    </div>
		                </div>
		                </c:forEach>
		            </div>
		        </div>
		    </section>
		</c:if>
		<c:if test="${empty search}">
		<h1 id="title1" align="center">Sorry no rooms available...</h1>
		</c:if><br>
			
	
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