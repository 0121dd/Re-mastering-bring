<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>브링브링</title>
    <meta content="" name="description">
    <meta content="" name="keywords">


    <!-- Favicons -->
    <link href="../resources/assets/img/main/icon-title.png" rel="icon">
    <link href="../resources/assets/img/main/icon-title.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="../resources/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="../resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="../resources/assets/css/style.css" rel="stylesheet">
    <link href="../resources/assets/css/common.css" rel="stylesheet">
    <link href="../resources/assets/css/user/login.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: Arsha
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
    
</head>

<body>

	<!-- 헤더 -->
  	<jsp:include page="/include/header.jsp"></jsp:include>
  	
    <!-- ======= Hero Section ======= -->
    <!-- <div id="hero" style="width: 100%;margin: 0 auto;height: 70px;" ></div> -->

    <!-- 메인 -->
    <main>
        <div class="form_login w-100 m-auto rounded">
            <h1 class="h3 mb-4 fw-normal text-center">로그인</h1>
            <form action="/user/login.do" method="post">
        
                <div class="form-floating mb-4">
                    <input type="email" id="floatingInput" class="form-control" name="userId" placeholder="name@example.com" required>
                    <label for="floatingInput">이메일 주소</label>
                </div>

                <div class="form-floating mb-4">
                    <input type="password" id="floatingPassword" class="form-control" name="userPwd" placeholder="Password" required>
                    <label for="floatingPassword">비밀번호</label>
                </div>
                <input type="submit" class="login_btn_input w-100 text-center fw-bold fs-4 rounded" value="로그인">
        
            </form>

            <div class="my-3 text-center">
                <a href="/user/findPwd.do" class="link-secondary">비밀번호 찾기</a> | 
                <a href="/user/findEmail.do" class="link-secondary">아이디 찾기</a> | 
                <a href="/user/insert.do" class="link-secondary">회원가입</a>
            </div>

            <div class="sns_buttons_div">
                <button type="button" class="kakao_login_btn rounded">
                    <img src="../resources/assets/img/user/kakao_login_btn.png" alt="카카오 로그인" onclick="kakao_btn();">
                </button><br>
                <button type="button" class="naver_login_btn rounded">
                    <img src="../resources/assets/img/user/naver_login_btn.png" alt="네이버 로그인" onclick="naver_btn();">
                </button>
            </div>
        </div>
    </main>
    <!-- End #main -->

	<!-- 푸터 -->
 	<jsp:include page="/include/footer.jsp"></jsp:include>

    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="../resources/assets/vendor/aos/aos.js"></script>
    <script src="../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="../resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
    <script src="../resources/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="../resources/assets/js/main.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

	<script>
// 	    // 쿠키 삭제 함수
// 	    function deleteCookie(name) {
// 	        document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT; domain=.kakao.com; path=/;';
// 	    }
// 	    deleteCookie('_kawlt');
	
// 		// 초기화
		Kakao.init('b82d0f1e81f80d7dfb52a8b896d5b146'); // JavaScript 키
		console.log(Kakao.isInitialized());

		function kakao_btn() {
			Kakao.Auth.authorize({
				redirectUri : 'http://127.0.0.1:8888/social/kakaoLogin.do',
				scope : 'account_email, profile_nickname',
				success : function(success) {
					console.log("카카오 인증 성공", success);
					// 로그인 또는 인증 성공 시 처리
				},
				fail : function(err) {
					console.log("카카오 인증 실패", err);
					// 로그인 또는 인증 실패 시 처리
				},
			});
		}
		// 네이버 로그인
		function naver_btn() {
			window.location.href = "/social/naverLoginUrl.do";
		}
	</script>
    <!-- 채널톡 api -->
    <jsp:include page="/include/chatBot.jsp"></jsp:include>


</body>

</html>