<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <!-- Vendor CSS Files -->
    <link href="../resources/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="../resources/assets/css/style.css" rel="stylesheet">
<%--    <link href="../resources/assets/css/common.css" rel="stylesheet">--%>


  <!-- =======================================================
  * Template Name: Arsha
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
    <style>
        main .imgArea{
            width: 200px;
            height: 150px;
            position: relative;
            overflow: hidden;
        }
        main .imgArea img{
            position: absolute;
            top: 0;
            bottom: 0;
            width: 100%;
            max-height: 200%;
        }
        main tr{
            border-bottom: 1px solid #d4d0d0;
        }
        .btnDivide{
            height: 35px;
            pointer-events: none;
            width: 101px;
            margin-right: 2px;
            --bs-btn-bg: #A0D8B3;
            --bs-btn-border-color: #A0D8B3;
        }
    </style>
</head>

<body>

  <!-- 헤더 -->
  <jsp:include page="/include/header.jsp"></jsp:include>

  <div style="width: 100%;height: 74px;"></div>
  <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center" style="width: 100%;margin: 0 auto;">
      <div style="width: 1300px;margin: 0 auto;">
        <div style="float: left;margin-top: 60px;">
          <h1 style="font-family: 'LINESeedKR-Bd';">나눔 게시판</h1>
          <div style="width: 100%;height: 30px;"></div>
          <h4 style="color: rgb(189, 245, 229);">당신의 낡고 병든 추억이 누군가에겐 도움이 될 수 있습니다.</h4>
        </div>
        <div style="display: flex;flex-direction: row;justify-content: flex-end;">
          <img src="../resources/assets/img/divide/free-icon-gift-3835774.png" style="width: 250px;" alt="">
        </div>
      </div>
    </section>
    
  <main style="width: 100%;margin: 0 auto;padding-top: 50px;">
    <section data-aos="fade-up">
      <div style="width: 1000px;margin: 0 auto;">
          <form action="/divide/search.do" method="get">
              <div class="input-group" style="width: 600px;float: left;" >
                  <select name="searchCondition" class="form-select" aria-label="Default select example" style="margin-right: 8px;border: 1px solid #adb5bd;">
                      <option value="all">전체</option>
                      <option value="title">제목</option>
                      <option value="region">지역</option>
                      <option value="category">카테고리</option>
                  </select>
                  <input name="searchKeyword" style="width: 200px;border: 1px solid #adb5bd;" class="form-control me-2" type="search" placeholder="검색어를 입력해주세요." aria-label="Search">
                  <button class="btn btn-outline-success" style="border-bottom-right-radius: 5px;border-top-right-radius: 5px;z-index: 1;width: 80px;" type="submit" >Search</button>
              </div>
          </form>
          <div style="float: right;">
              <c:if test="${sessionId ne null}">
                <button onclick="showDivdeInsert();" type="button" class="btn btn-success">글 등록</button>
              </c:if>
              <c:if test="${sessionId eq null}">
                  <button onclick="loginCheck();" type="button" class="btn btn-success">글 등록</button>
              </c:if>
          </div>
          <div style="width: 100%;float: left;border-top: 1px solid #ccc;margin-top: 15px;padding: 10px 0px">
              <p style="float:left;font-size: 18px;margin: 0;padding: 5px;font-weight: 600;font-family: 'SUITE-Regular';letter-spacing: 2px;padding-left: 15px;"># ${pInfo.totalCount}건</p>
              <p style="margin: 0;padding: 7px 13px 0px 8px;margin-left: 3px;float: right;">
                  <c:if test="${searchOption eq 'date'}">
                      <a href="/divide/list.do" style="text-decoration:underline;text-underline-position:under;">최신순</a> |
                      <a href="/divide/list.do?searchOption=heart">추천순</a>
                  </c:if>
                  <c:if test="${searchOption ne 'date'}">
                      <a href="/divide/list.do">최신순</a> |
                      <a href="/divide/list.do?searchOption=heart" style="text-decoration:underline;text-underline-position:under;">추천순</a>
                  </c:if>
          </div>
          <table data-aos-delay="50" class="table" style="text-align: center;margin:0;margin-top: 5px;">
            <thead>
              <tr class="table" style="border-bottom: 2px solid #ccc;">
              </tr>
            </thead>
            <tbody>
            <c:forEach var="data" items="${rData}" varStatus="i">
                <tr>
                    <c:url var="detailUrl" value="/divide/detail.do">
                        <c:param name="divNo" value="${data.divide.divNo }"></c:param>
                    </c:url>
                    <td style="width: 220px;padding-top: 10px;padding-bottom: 10px;">
                        <div class="card imgArea">
                            <img src="${data.image.imagePath}">
<%--                            <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${data.image.imagePath}); background-position: center center;"></div>--%>
                        </div>
                    </td >
                    <td style="text-align: left;font-size: 17px;">
                        <h4 style="padding-top: 15px;font-weight: 600;margin: 0;font-size: 22px;">
                            <c:if test="${data.divide.divYn.toString() eq 'Y'}">
                                <button class="btn btn-secondary" style="height: 35px;pointer-events: none;width: 87px;margin-right: 2px;">나눔 완료</button>
                            </c:if>
                            <c:if test="${data.divide.divYn.toString() eq 'N'}">
                                <button class="btn btn-warning btnDivide" >나눔 진행중</button>
                            </c:if>
                            <a href="${detailUrl}">${data.divide.divTitle}</a>
                        </h4>
                        <br>
                        <div style="margin-bottom: 10px;">
                            나눔 지역 : ${data.city.cityName} ${data.district.districtName}<br>
                        </div>
                        <div>
                            카테고리 : ${data.wasteCategory.wasteCategoryName}
                        </div>

                    </td>
                    <td style="width: 100px;position: relative;">
                        <div style="position: absolute;bottom: 10px;">
                            <c:if test="${sessionId eq null || data.chatRoom.MUserNo eq 0 || data.chatRoom.getUserNo eq 0 || data.chatRoom.MUserNo ne cUserNo && data.chatRoom.getUserNo ne cUserNo}">
                                <i class="bi bi-chat"></i>
                            </c:if>
                            <c:if test="${sessionId ne null}">
                                <c:if test="${data.chatRoom.MUserNo eq cUserNo || data.chatRoom.getUserNo eq cUserNo}">
                                    <i class="bi bi-chat-fill" style="color: #898888;"></i>
                                </c:if>
                            </c:if>
                            ${data.chatRoom.chatroomCount} &nbsp;
                            <c:if test="${sessionId eq null || data.heart.heartUserNo eq 0}">
                                <i class="bi bi-heart"></i>
                            </c:if>
                            <c:if test="${sessionId ne null && cUserNo eq data.heart.heartUserNo}">
                                <i class="bi bi-heart-fill" style="color: #FF8080;"></i>
                            </c:if>
                            ${data.heart.heartCount}
                        </div>
                    </td>
                </tr>
            </c:forEach>
              <!-- 아 -->
            </tbody>
          </table>
      </div>
    </section>
    <div style="width: 1000px;margin: 0 auto;margin-top: 60px;">
      <nav aria-label="Page navigation example" style="display: flex;">
        <ul class="pagination" style="margin: 0 auto;">
<%--            정렬 최신순일 때--%>
            <c:if test="${searchOption eq 'date'}">
                <c:if test="${pInfo.startNavi ne 1}">
                    <c:url var="bPageUrl" value="/divide/list.do">
                        <c:param name="page" value="${pInfo.startNavi-1}"></c:param>
                    </c:url>
                    <li class="page-item">
                        <a style="color: black;" class="page-link" href="${bPageUrl}">Previous</a>
                    </li>
                </c:if>
                <c:forEach begin="${pInfo.startNavi}" end="${pInfo.endNavi}" var="p">
                    <c:url var="pageUrl" value="/divide/list.do">
                        <c:param name="page" value="${p}"></c:param>
                    </c:url>
                    <li class="page-item">
                        <a style="color: black;" class="page-link" href="${pageUrl}">${p}</a>
                    </li>
                </c:forEach>
                <c:if test="${pInfo.endNavi ne pInfo.naviTotalCount}">
                    <c:url var="nPageUrl" value="/divide/list.do">
                        <c:param name="page" value="${pInfo.endNavi+1}"></c:param>
                    </c:url>
                    <li class="page-item">
                        <a style="color: black;" class="page-link" href="${nPageUrl}">Next</a>
                    </li>
                </c:if>
            </c:if>
        <%--            정렬 하트순일 때--%>
            <c:if test="${searchOption ne 'date'}">
                <c:if test="${pInfo.startNavi ne 1}">
                    <c:url var="bPageUrl" value="/divide/list.do?searchOption=heart">
                        <c:param name="page" value="${pInfo.startNavi-1}"></c:param>
                    </c:url>
                    <li class="page-item">
                        <a style="color: black;" class="page-link" href="${bPageUrl}">Previous</a>
                    </li>
                </c:if>
                <c:forEach begin="${pInfo.startNavi}" end="${pInfo.endNavi}" var="p">
                    <c:url var="pageUrl" value="/divide/list.do?searchOption=heart">
                        <c:param name="page" value="${p}"></c:param>
                    </c:url>
                    <li class="page-item">
                        <a style="color: black;" class="page-link" href="${pageUrl}">${p}</a>
                    </li>
                </c:forEach>
                <c:if test="${pInfo.endNavi ne pInfo.naviTotalCount}">
                    <c:url var="nPageUrl" value="/divide/list.do?searchOption=heart">
                        <c:param name="page" value="${pInfo.endNavi+1}"></c:param>
                    </c:url>
                    <li class="page-item">
                        <a style="color: black;" class="page-link" href="${nPageUrl}">Next</a>
                    </li>
                </c:if>
            </c:if>
        </ul>
      </nav>
    </div>
  </main>
  <!-- 메인 -->
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
  <jsp:include page="/include/chatBot.jsp"></jsp:include>

  <!-- Template Main JS File -->
  <script src="../resources/assets/js/main.js"></script>
  <!-- 채널톡 api -->
  <script>
    <!-- 로그인, 로그아웃 -->
    <jsp:include page="/include/loginJs.jsp"></jsp:include>

    function showDivdeInsert() {
        location.href = "/divide/insert.do";
    }
  </script>
  
  
</body>

</html>