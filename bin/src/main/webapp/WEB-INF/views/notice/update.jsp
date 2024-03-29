<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>브링브링</title>
  <meta content="" name="keywords">
  <meta content="" name="description">


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
  <link href="../resources/assets/vendor/bootstrap/css/bootstrap.notice.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../resources/assets/css/style.css" rel="stylesheet">
  <link href="../resources/assets/css/common.css" rel="stylesheet">
  <link href="../resources/assets/css/notice/update.css" rel="stylesheet">

  <!-- summernote CSS File -->
  <link rel="stylesheet" href="../resources/assets/css/notice/summernote/summernote-lite.css">
  
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <!-- =======================================================
  * Template Name: Arsha
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
    ======================================================== -->
    <style>
      .note-icon-caret:before {
          width: 7px;
      }
      .dropdown-toggle::after {
          border: 0px;
      }
    </style>
</head>

<body>

  <!-- ======= Header ======= -->
  <jsp:include page="/include/header.jsp"></jsp:include>
  
    <div style="width: 100%;height: 74px;"></div>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center" style="width: 100%;margin: 0 auto;">
    <div style="width: 1300px;margin: 0 auto;">
      <div style="float: left;margin-top: 60px;">
        <h1>공지사항</h1>
        <div style="width: 100%;height: 30px;"></div>
        <h4 style="color: rgb(189, 245, 229);">브링브링의 업데이트 정보 등 다양한 소식을 알려드립니다.</h4>
      </div>
      <div style="display: flex;flex-direction: row;justify-content: flex-end;">
        <img src="../resources/assets/img/notice/free-icon-noticeboard-3000428.png" style="width: 250px;" alt="">
      </div>
    </div>

  </section>

  <!-- <div style="width: 100%;height: 1000px;"></div> -->
  <!-- End Hero -->

  <!-- 메인 -->
	<main id="main" class="main">
		<form class="notice-form" action="/notice/update.do" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="userNo" value="${notice.userNo }">
			<input type="hidden" name="noticeNo" value="${notice.noticeNo }">
			<input type="hidden" name="imageName" value="${image.imageName }">
			<input type="hidden" name="imageRename" value="${image.imageRename }">
			<input type="hidden" name="imagePath" value="${image.imagePath }">
			<h2>공지사항 수정</h2>
			<hr>
			<div class="container">
				<div class="row mb-3">
					<label class="col-sm-1 col-form-label">카테고리</label>
					<div class="col-sm-3">
						<select name="noticeType" id="noticeType" class="form-select"
							aria-label="Default select example" onFocus="this.initialSelect = this.selectedIndex;" onChange="this.selectedIndex = this.initialSelect;">
								<option value="서비스" <c:if test="${notice.noticeType =='서비스' }">selected</c:if>>서비스</option>
								<option value="업데이트" <c:if test="${notice.noticeType == '업데이트' }">selected</c:if>>업데이트</option>
						</select>
					</div>
				</div>

				<!-- 카테고리에서 서비스 선택시 지역 버튼이 보임, 그외에는 전체로 보임-->
				<div class="row mb-3">
					<label class="col-sm-1 col-form-label pt-0">지역</label>
					<div class="col-sm-10">
						<div class="from-check">
							<input class="from-check-input" type="radio" name="gridRadios"
								id="gridRadios1" value="option1" checked>
								<c:if test="${notice.noticeType == '서비스' }"><label class="from-check-label" for="gridRadios1">${notice.regionName }</label></c:if>
								<c:if test="${notice.noticeType == '업데이트' }"><label class="from-check-label" for="gridRadios1">전체</label></c:if>
						</div>
					</div>
				</div>

				<div class="row mb-3">
					<label for="inputText" class="col-sm-1 col-form-label">제목</label>
					<div class="col-sm-6">
						<input type="text" name="noticeTitle" id="noticeTitle"
							class="form-control" value="${notice.noticeTitle}">
					</div>
				</div>

<div class="row mb-3">
    <label for="inputNumber" class="col-sm-1 col-form-label">첨부파일</label>
    <div class="col-sm-6">
        <input class="form-control" type="file" id="formFile" name="uploadFile">
        <c:choose>
            <c:when test="${not empty image.imagePath}">
                <a href="../resources/assets/nUploadFiles/img/${image.imageRename}">${image.imagePath}</a>
            </c:when>
        </c:choose>
    </div>
</div>

				<div class="row mb-3">
					<label for="summernote" class="col-sm-1 col-form-label">내용</label>
					<div class="col-sm-10">
						<textarea id="summernote" name="noticeContent">${notice.noticeContent}</textarea>
					</div>
				</div>
			</div>
			<hr>
			<!-- <div class="col-sm-10"> -->
			<button type="submit" class="btn btn-primary"
				onclick="return notice_check();">수정하기</button>
		</form>
	</main>
	<!-- End #main -->

  <!-- ======= Footer ======= -->
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

  <!-- 채널톡 api -->
 <jsp:include page="/include/chatBot.jsp"></jsp:include>

  <!-- summernote api -->
   <script src="../resources/assets/js/summernote/summernote-lite.js"></script>
  <script src="../resources/assets/js/summernote/lang/summernote-ko-KR.js"></script>
	<script>
 	<!-- 써머노트 스크립트 -->
 	$(document).ready(function () {
 	    $('#summernote').summernote({
 	        placeholder: '내용을 작성하세요',
 	        height: 400,
 	        maxHeight: 800
 	    });

 	});
	
	

	</script>

	<!-- 기능 스크립트 -->
	<script>
		function notice_check() {
			var noticeType = document.getElementById("noticeType").value;
			var noticeTitle = document.getElementById("noticeTitle").value;
			var noticeContent = $('#summernote').summernote('code').replace(
					/<\/?[^>]+(>|$)/g, "");

			if (noticeType == "choice") {
				alert("카테고리를 선택해주세요.");
				event.preventDefault();
				return false;
			}
			;

			if (noticeTitle == "") {
				alert("제목을 입력해주세요.");
				event.preventDefault();
				noticeTitle.focus();
				return false;
			}
			;
			if (noticeTitle.length > 50) {
				alert("제목은 50글자까지만 작성 가능합니다.");
				event.preventDefault();
				noticeTitle.focus();
				return false;
			}
			;

			if (noticeContent.trim() == "") {
				alert("내용을 입력해주세요.");
				$('#summernote').summernote('focus');
				event.preventDefault();
				return false;
			}
			;
			if (noticeContent.trim().length > 1000) {
				alert("내용은 1000글자까지만 작성 가능합니다.");
				$('#summernote').summernote('focus');
				event.preventDefault();
				return false;
			}
			;

		};

	</script>


</body>

</html>