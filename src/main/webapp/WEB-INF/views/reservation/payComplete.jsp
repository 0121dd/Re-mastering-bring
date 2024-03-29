<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>결제 완료</title>
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
  <link href="../../../resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="../../../resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../../../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../../../resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../../../resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../../../resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../../../resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../../../resources/assets/css/style.css" rel="stylesheet">
  <link href="../../../resources/assets/css/common.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<!--  달력-->
<!--  <link rel="stylesheet" href="../../../resources/assets/css/reservation/bootstrap-material-datetimepicker.css" />-->
<!--  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">-->
  <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<!--  <link rel="stylesheet" href="/css/jquery-ui.min.css">-->
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>-->
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
  <script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>





  <link rel="stylesheet" href="../../../resources/assets/css/reservation/paymentComplete.css">
  <link rel="stylesheet" href="../../../resources/assets/css/reservation/common.css">
</head>

<body>

<!-- 헤더 -->
<jsp:include page="/include/header.jsp"></jsp:include>

<div style="width: 100%;height: 74px;"></div>
<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center" style="width: 100%;margin: 0 auto;">
  <div style="width: 1300px;margin: 0 auto;">
    <div style="float: left;margin-top: 60px;">
      <h1>결제 완료</h1>
      <div style="width: 100%;height: 30px;"></div>
      <h4 style="color: rgb(189, 245, 229);">결제가 완료되었습니다</h4>
    </div>
    <div style="display: flex;flex-direction: row;justify-content: flex-end;">
      <img src="../../../resources/assets/img/reservation/payment.png" style="width: 250px;" alt="">
    </div>
  </div>

</section>
<div style="width: 100%;">

<main>
  <div>
    <h2 class="subject" style="margin-bottom: 35px;">결제 완료</h2>
  </div>
  <div>
    <div class="progress-bar out-progress-bar">
      <div class="progress-bar in-progress-bar"></div>
    </div>
  </div>
  <div id="complete-print">
    <p>결제가 완료되었습니다</p>
  </div>
  <div>
    <p class="title">신청 내역</p>
  </div>
  <hr>
  <div id="infoContainer">
    <table class="table table-borderless">
      <tr>
        <td>
          <label>예약 번호</label>
        </td>
        <td>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">${wasteData.get(0).reservation.rvDischargeNo}</li>
          </ul>
        </td>
      </tr>
<%--      <tr>--%>
<%--        <td>--%>
<%--          <label>배출 품목</label>--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          <table class="table table-borderless">--%>
<%--            <c:forEach items="${wasteDataList}" var="item" varStatus="i">--%>
<%--              <tr>--%>
<%--                <td class="selectedItems" style="padding-bottom: 20px; padding-top: 20px; border-bottom: 1px solid #ccc;">--%>
<%--                  <span class="selectSpan">선택 ${i.index}</span>--%>
<%--                  <span>${item.wasteCategory.wasteCategoryName} > ${item.wasteType.wasteTypeName} > ${item.wasteInfo.wasteInfoStandard}</span>--%>
<%--                </td>--%>
<%--              </tr>--%>
<%--            </c:forEach>--%>
<%--          </table>--%>
<%--        </td>--%>
<%--      </tr>--%>
      <tr>
        <td>
          <label>배출 장소</label>
        </td>
        <td>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">${wasteData.get(0).reservation.rvAddr}</li>
          </ul>
        </td>
      </tr>
      <tr>
        <td>
          <label>배출일</label>
        </td>
        <td>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">${wasteData.get(0).reservation.rvRvDate}</li>
          </ul>
        </td>
      </tr>
      <tr>
        <td>
          <label>수수료</label>
        </td>
        <td>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">${wasteData.get(0).reservationDetail.rvDetailFee}원</li>
          </ul>
        </td>
      </tr>
    </table>
  </div>
  <div id="submit_btn_box">
    <button class="btn btn-success" id="submitBtn" type="button" style="font-family: 'LINESeedKR-Bd';font-size: 20px;">마이페이지로 이동</button>
  </div>
</main>
</div><!-- End Hero -->

<!-- 메인 -->
<!-- End #main -->

<!-- 푸터 -->
<jsp:include page="/include/footer.jsp"></jsp:include>

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="../../../resources/assets/vendor/aos/aos.js"></script>
<script src="../../../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../../../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="../../../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="../../../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="../../../resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
<script src="../../../resources/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="../../../resources/assets/js/main.js"></script>

<!--주소 api 사용 script-->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 채널톡 api -->
<jsp:include page="/include/chatBot.jsp"></jsp:include>
<script>

  document.querySelector('#submitBtn').addEventListener('click', function () {
    location.href = '/mypage/main.do'
  })

</script>

</body>

</html>