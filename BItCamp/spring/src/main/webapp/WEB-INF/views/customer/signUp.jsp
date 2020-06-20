<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Section Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="canvas-open">
		<i class="icon_menu"></i>
	</div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<i class="icon_close"></i>
		</div>
		<div class="search-icon  search-switch">
			<i class="fas fa-search"></i>
		</div>
		
		<nav class="mainmenu mobile-menu">
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
							<a href="/signUp" class="bk-btn" id="signUp">회원가입</a> <a
								href="/login" class="bk-btn" id="login">로그인</a> <a
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
	<!-- 여기에 사이에 만들면 됩니다. -->

	<h1 align="center">SignUp</h1>
	<br>
	<br>
	<br>
	<form action='/signUpProcess' class="contact-form" method="post">
		<table align="center">
			<tr>
				<td align="center">
					<div class="form-group">
						<label for="customerID"><h5 align="center"><b>아이디</b></h5></label><br> <input
							type="text" id="customerID" name="customerID"
							placeholder="소문자와 숫자 6~15자리">
						<div class="check_font" id="checkID"></div>
					</div>
					<br>
					<div class="form-group">
						<label for="customerPW"><h5 align="center"><b>암호</b></h5></label><br> <input
							type="password" id="customerPW" name="customerPW"
							placeholder="대,소문자 영어, 숫자, 특수문자 !,@,#,$,%,^,&,*,(,) 를 포함한 6~15자리"
							required>
						<div class="check_font" id="checkPW"></div>
					</div>
					<br>
					<div class="form-group">
						<label for="customerPW2"><h5 align="center"><b>암호 확인</b></h5></label><br> <input
							type="password" id="customerPW2" name="customerPW2"
							placeholder="Confirm Password" required>
						<div class="check_font" id="checkPW2"></div>
					</div>
					<br>
					<div class="form-group">
						<label for="customerName"><h5 align="center"><b>이름</b></h5></label><br> <input
							type="text" id="customerName" name="customerName"
							placeholder="한글 2글자~15글자" required>
						<div class="check_font" id="checkName"></div>
					</div>
					<br>
					<div class="form-group required">
						<label for="SSNumber"><h5 align="center"><b>주민등록번호('-'없이 번호만 입력해주세요)</b></h5></label><br> 
						<input type="password" id="SSNumber"
							name="SSNumber" placeholder="Social Security Number" required>
						<div class="check_font" id="checkSSNumber"></div>
					</div>
					<br>
					<div class="form-group">
						<label for="customerPhoneNumber"><h5 align="center"><b>휴대전화 ('-'없이 번호만
								입력해주세요)</b></h5></label><br> <input type="tel" id="customerPhoneNumber"
							name="customerPhoneNumber" placeholder="Phone Number" required>
						<div class="check_font" id="checkPhoneNumber"></div>
					</div>
					<br>
				</td>
			</tr>
			<tr>
				<td align="center" valign="top">
					<button type="submit">SignUP</button>
					<button type="submit" onclick="location.href='login'">Cancel</button>
				</td>
			</tr>
		</table>
	</form>


	<!-- <div class="top-nav">
		<div class="tn-right">
			<form action='/signUpProcess' method="post">
				<h1>SignUp</h1>
				<div class="form-group">
					<label for="customerId">Id</label> <input type="text"
						class="form-control" id="customerId" name="customerID"
						placeholder="소문자와 숫자 6~15자리">
					<div class="check_font" id="checkId"></div>
				</div>
				<div class="form-group">
					<label for="customerPw">Pw</label> <input type="password"
						class="form-control" id="customerPw" name="customerPW"
						placeholder="대,소문자 영어, 숫자, 특수문자 !,@,#,$,%,^,&,*,(,) 를 포함한 6~15자리"
						required>
					<div class="check_font" id="checkPw"></div>
				</div>
				<div class="form-group">
					<label for="customerPw2">Pw Check</label> <input type="password"
						class="form-control" id="customerPw2" name="customerPw2"
						placeholder="Confirm Password" required>
					<div class="check_font" id="checkPw2"></div>
				</div>
				<div class="form-group">
					<label for="customerName">Name</label> <input type="text"
						class="form-control" id="customerName" name="customerName"
						placeholder="한글 2글자~15글자" required>
					<div class="check_font" id="checkName"></div>
				</div>
				<div class="form-group required">
					<label for="SSNumber">Social Security Number('-' 없이 번호만
						입력해주세요)</label> <input type="text" class="form-control" id="SSNumber"
						name="SSNumber" placeholder="Social Security Number" required>
					<div class="check_font" id="checkSSNumber"></div>
				</div>
				<div class="form-group">
					<label for="customerPhoneNumber">휴대전화 ('-' 없이 번호만 입력해주세요)</label> <input
						type="tel" class="form-control" id="customerPhoneNumber"
						name="customerPhoneNumber" placeholder="Phone Number" required>
					<div class="check_font" id="checkPhoneNumber"></div>
				</div>
				<button type="submit" class="bk-btn">SignUP</button>
				<a href="/login" type="button" class="bk-btn">Cancel</a>
			</form>
		</div>
	</div> -->

	<br>
	<br>
	<br>


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
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/signUp.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/soobin.js"></script>
</body>

</html>