<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>대형 폐기물 수거 신청</title>
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


  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


  <link rel="stylesheet" href="../../../resources/assets/css/reservation/wasteSelect.css">
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
      <h1>대형 폐기물 수거 신청</h1>
      <div style="width: 100%;height: 30px;"></div>
      <h4 style="color: rgb(189, 245, 229);">버리기 어려운 폐기물을 수거해드립니다</h4>
    </div>
    <div style="display: flex;flex-direction: row;justify-content: flex-end;">
      <img src="../../../resources/assets/img/reservation/truck.png" style="width: 250px;" alt="">
    </div>
  </div>

</section>
<div style="width: 100%;">

  <main>
    <h2 class="subject" style="margin-bottom: 35px;">대형 폐기물 수거 신청</h2>
    <div>
      <div class="progress-bar out-progress-bar">
        <div class="progress-bar in-progress-bar"></div>
      </div>
    </div>
    <p class="title">배출 물품 선택</p>
    <hr>
    <div class="container">
      <div id="category_box">
        <!--      포기한다..!!!!!!!!!!!! -->
        <button type="button" class="btn btn-outline-success" id="furniture" value="가구" onclick="wasteSelect(this);">가구</button>
        <button type="button" class="btn btn-outline-success" id="electronics" value="가전" onclick="wasteSelect(this);">가전</button>
        <button type="button" class="btn btn-outline-success" id="appliance" value="운동용품" onclick="wasteSelect(this);">운동용품</button>
        <button type="button" class="btn btn-outline-success" id="household" value="생활/주방" onclick="wasteSelect(this);">생활/주방</button>
        <button type="button" class="btn btn-outline-success" id="instrument" value="악기" onclick="wasteSelect(this);">악기</button>
        <button type="button" class="btn btn-outline-success" id="digital" value="디지털" onclick="wasteSelect(this);">디지털</button>
        <button type="button" class="btn btn-outline-success" id="other" value="기타" onclick="wasteSelect(this);">기타</button>
      </div>
    </div>
    <div>
      <div id="listDiv">
        <table class="table" id="listTable">
          <tbody>

<%--          Ajax 요청을 통해 리스트가 출력됨--%>
          <p id="listDiv-p">물품을 선택해주세요</p>

          </tbody>
        </table>
      </div>
    </div>
    <span>최대 10개까지 선택할 수 있습니다.</span>
    <div>
      <p class="title">선택한 물품</p>
      <hr>
      <table class="table" id="selectTable">
        <tbody>
        </tbody>
      </table>
    </div>
    <div id="submit_btn_box" style="padding-bottom: 60px;">
      <button class="btn btn-success" id="submitBtn" type="button" style="font-family: 'LINESeedKR-Bd';font-size: 20px;">신청하기</button>
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

<!-- 채널톡 api -->
<jsp:include page="/include/chatBot.jsp"></jsp:include>

<script type="text/javascript">
  // 선택한 아이템을 저장할 배열
  let selectedItems = [];

  // 버튼 선택 시 리스트 출력
  function wasteSelect(button) {

    // 모든 버튼에서 'active' 클래스 제거
    var buttons = document.querySelectorAll('.btn.btn-outline-success');
    buttons.forEach(function(btn) {
      btn.classList.remove('active');
    });

    // 클릭한 버튼에 'active' 클래스 추가
    button.classList.add('active');

    let cellNum = 1;
    let selectItem = button.value;
    console.log("선택된 값: " + selectItem);

    let encodedItem = encodeURIComponent(selectItem);
    let url = "/reservation/selectItem.do?" + encodedItem;

    $.ajax({
      url: url,
      data: { selectItem: selectItem },
      type: "GET",
      success: function (data) {
        const seletMsg = document.querySelector('#listDiv-p');
        seletMsg.style.display='none';

        var tableBody = document.getElementById('listTable');

        // 기존 목록을 모두 삭제
        while (tableBody.firstChild) {
          tableBody.removeChild(tableBody.firstChild);
        }

        var groupedData = {};

        for (var i = 0; i < data.length; i++) {
          var item = data[i];
          var wasteTypeName = item.wasteType.wasteTypeName;
          // let wasteInfoNo = item.wasteInfo.wasteInfoNo;

          if (!groupedData[wasteTypeName]) {
            groupedData[wasteTypeName] = {
              wasteCategoryName: wasteTypeName,
              wasteInfoStandards: [],
              wasteInfoFees: [],
              wasteInfoNos:[]
            };
          }

          groupedData[wasteTypeName].wasteInfoStandards.push(item.wasteInfo.wasteInfoStandard);
          groupedData[wasteTypeName].wasteInfoFees.push(item.wasteInfo.wasteInfoFee);
          groupedData[wasteTypeName].wasteInfoNos.push(item.wasteInfo.wasteInfoNo);

        }

        console.log("그룹", groupedData[wasteTypeName])

        var tableBody = document.getElementById('listTable');

        // 체크박스 변경 이벤트 리스너를 추가하는 함수
        function createChangeListener(pTag, item, selectElement, noTag) {

          return function () {
            var selectedOptionIndex = selectElement.selectedIndex;
            var matchingFee = item.wasteInfoFees[selectedOptionIndex];
            pTag.innerText = matchingFee;

            var selectedInfoNo = item.wasteInfoNos[selectedOptionIndex];

            noTag.innerText = selectedInfoNo;
            console.log("noInfoCell 내용: ", noTag.innerText);
          };
        }

        // 이벤트 리스너 연결 및 선택한 아이템을 배열에 추가 또는 제거
        for (var wasteTypeName in groupedData) {
          var item = groupedData[wasteTypeName];
          var trTag = document.createElement('tr');

          // 첫번째 열 (체크박스)
          var firstCell = document.createElement('td');
          var checkbox = document.createElement('input');
          checkbox.setAttribute('class', 'form-check-input me-1');
          checkbox.setAttribute('type', 'checkbox');
          checkbox.setAttribute('value', item.wasteCategoryName);
          checkbox.setAttribute('id', item.wasteCategoryName);

          var label = document.createElement('label');
          label.setAttribute('class', 'align-items-center');
          label.setAttribute('for', item.wasteCategoryName);

          label.textContent = item.wasteCategoryName;
          firstCell.appendChild(checkbox);
          firstCell.appendChild(label);

          firstCell.className = "firstTd";

          // 두번째 열 (선택 상품)
          var secondCell = document.createElement('td');
          var selectElement = document.createElement('select');
          selectElement.setAttribute('name', 'wasteInfoStandard');
          selectElement.setAttribute('class', 'form-select selectBox');
          item.wasteInfoStandards.forEach(function (standard) {
            var option = document.createElement('option');
            option.textContent = standard;
            option.value = standard;
            selectElement.appendChild(option);
          });
          selectElement.value = item.wasteInfoStandards[0];
          secondCell.appendChild(selectElement);
          secondCell.className = "secondTd";

          // 세번째 열 (가격)
          var thirdCell = document.createElement('td');
          var pTag = document.createElement('p');
          var initialMatchingFee = item.wasteInfoFees[0];
          pTag.innerText = initialMatchingFee;

          pTag.setAttribute('class', 'listTableP');

          thirdCell.appendChild(pTag);
          thirdCell.className = "thirdTd";


          // 정보를 보내기 위한 태그 추가
          var noInfoCell = document.createElement('td');
          var noTag = document.createElement('p');
          // var inputTag = document.createElement('input');
          var infoNo = item.wasteInfoNos[0];
          // inputTag.setAttribute("name", 'wasteInfoNo');
          // inputTag.setAttribute("class", 'wasteInfoNo');
          // inputTag.type='hidden';
          // inputTag.value=infoNo;
          noTag.innerText = infoNo;
          noTag.setAttribute('class', 'wasteInfoNo');
          thirdCell.appendChild(noTag);

          // 네 번째 열 (갯수 및 추가/제거 버튼)
          var fourthCell = document.createElement('td');

          // "마이너스" 버튼 생성
          var minusButton = document.createElement('button');
          minusButton.setAttribute('class', 'selectBtn');
          minusButton.setAttribute('value', '-');
          minusButton.addEventListener('click', function () {
            var trElement = this.closest('tr'); // 해당 "마이너스" 버튼이 속한 행(tr) 찾기
            var checkbox = trElement.querySelector('input[type=checkbox]');
            var wasteCategoryName = checkbox.value;
            var wasteInfoStandard = trElement.querySelector('.selectBox').value;
            var wasteInfoFee = trElement.querySelector('.listTableP').textContent;
            var wasteInfoNo = trElement.querySelector('.wasteInfoNo').textContent;
            console.log("여기는?", wasteInfoNo)
            count("minus", this, { wasteCategoryName, wasteInfoStandard, wasteInfoFee, wasteInfoNo});

            // 아이템 제거 함수 호출
            removeFromSelectTable({ wasteCategoryName, wasteInfoStandard, wasteInfoFee, wasteInfoNo });
          });


          // 이미지 엘리먼트 생성
          var minusImage = document.createElement('img');
          minusImage.setAttribute('src', '../../../resources/assets/img/reservation/minus.png');
          minusButton.appendChild(minusImage);

          // "플러스" 버튼 생성
          var plusButton = document.createElement('button');
          plusButton.setAttribute('class', 'selectBtn');
          plusButton.setAttribute('value', '+');
          // plusButton.addEventListener('click', function () {
          //   count("plus", this, item);
          // });
          // "플러스" 버튼 클릭 이벤트 리스너 연결
          plusButton.addEventListener('click', function () {
            var trElement = this.closest('tr'); // 해당 "플러스" 버튼이 속한 행(tr) 찾기
            var checkbox = trElement.querySelector('input[type=checkbox]');
            var wasteCategoryName = checkbox.value;
            var wasteInfoStandard = trElement.querySelector('.selectBox').value;
            var wasteInfoFee = trElement.querySelector('.listTableP').textContent;
            var wasteInfoNo = trElement.querySelector('.wasteInfoNo').textContent;
            count("plus", this, { wasteCategoryName, wasteInfoStandard, wasteInfoFee, wasteInfoNo});
          });


          // 이미지 엘리먼트 생성
          var plusImage = document.createElement('img');
          plusImage.setAttribute('src', '../../../resources/assets/img/reservation/plus.png');

          // 숫자 입력 엘리먼트 생성
          var numberInput = document.createElement('input');
          numberInput.setAttribute('type', 'number');
          numberInput.setAttribute('min', '0');
          numberInput.setAttribute('max', '10');

          numberInput.setAttribute('value', '0');

          // 버튼과 이미지 엘리먼트를 버튼 엘리먼트에 추가
          minusButton.appendChild(minusImage);
          plusButton.appendChild(plusImage);

          // 버튼, 숫자 입력, 버튼을 네 번째 열에 추가
          fourthCell.appendChild(minusButton);
          fourthCell.appendChild(numberInput);
          fourthCell.appendChild(plusButton);

          fourthCell.className = 'fourthTd';


          // 체크박스를 선택했을 때 동작하도록 하는 이벤트 핸들러
          checkbox.addEventListener('change', function (event) {
            var trElement = event.target.closest('tr');

            var wasteCategoryName = trElement.querySelector('label').textContent;
            var wasteInfoStandard = trElement.querySelector('.selectBox').value;
            var wasteInfoFee = trElement.querySelector('.listTableP').textContent;
            var wasteInfoNo = trElement.querySelector('.wasteInfoNo').textContent;

            var selectedItem = [];
            selectedItem.push({
              wasteCategoryName: wasteCategoryName,
              wasteInfoStandard: wasteInfoStandard,
              wasteInfoFee: wasteInfoFee,
              wasteInfoNo: wasteInfoNo
            });
            // 이 값을 보내야 함
            if (event.target.checked) {


              count("plus", this, item, selectedItem);
            } else {

            }
          });

          // 이벤트 리스너 연결

          selectElement.addEventListener('change', createChangeListener(pTag, item, selectElement, noTag));

          trTag.appendChild(firstCell);
          trTag.appendChild(secondCell);
          trTag.appendChild(thirdCell);
          trTag.appendChild(noInfoCell);
          trTag.appendChild(fourthCell);
          tableBody.appendChild(trTag);

        }
      },
      error: function () {
        alert("Ajax 오류! 관리자에게 문의하세요");
      }
    });
  }

  // 실제로 선택한 목록에 추가하는 count 함수
  function count(type, obj, selectedItem) {

    const checkbox = document.querySelector('input[type=checkbox]:checked');

    const tdElement = obj.parentElement;
    const trElement = tdElement.parentElement;

    // tr의 첫 번째 td
    const firstTd = trElement.querySelector('td:first-child');
    const lastTd = trElement.querySelector('td:last-child');

    // 첫 번째 td의 체크박스
    const trCheckbox = firstTd.querySelector('input[type=checkbox]');

    if (checkbox && trCheckbox.checked) {

      if (type === 'plus') {
        var numberInput = obj.parentElement.querySelector('input[type=number]');
        var currentValue = parseInt(numberInput.value);
        var maxValue = parseInt(numberInput.getAttribute('max'));

        if (currentValue < maxValue) {
          currentValue++;
          numberInput.value = currentValue; // input 값을 증가시킴
          addToSelectTable(selectedItem);
        }
      } else if (type === 'minus') {
        var numberInput = obj.parentElement.querySelector('input[type=number]');
        var currentValue = parseInt(numberInput.value);
        var minValue = parseInt(numberInput.getAttribute('min'));

        if (currentValue > minValue) {
          currentValue--;
          numberInput.value = currentValue; // input 값을 감소시킴
          removeFromSelectTable(selectedItem);
        }
      }
  }

    // 선택한 물품에 추가
  function addToSelectTable(selectedItem) {
    if (selectedItems.length >= 10) {
      alert("최대 10개까지 추가할 수 있습니다.");
      return;
    }

    selectedItems.push(selectedItem);
    console.log(selectedItem);

    displaySelectedItems();
  }

    // 삭제
  function removeFromSelectTable(item) {
    const index = selectedItems.findIndex((selectedItem) => {
      return (
              selectedItem.wasteCategoryName === item.wasteCategoryName &&
              selectedItem.wasteInfoStandard === item.wasteInfoStandard &&
              selectedItem.wasteInfoFee === item.wasteInfoFee &&
              selectedItem.wasteInfoNo === item.wasteInfoNo
      );
    });

    if (index !== -1) {
      selectedItems.splice(index, 1);

      displaySelectedItems();
    }
  }

  function displaySelectedItems() {
    var selectTable = document.getElementById('selectTable');
    var tbody = selectTable.querySelector('tbody');

    // 테이블 내용 지우기
    tbody.innerHTML = '';

    // 선택한 아이템을 반복하며 표시
    selectedItems.forEach(function (item, index) {
      var newRow = tbody.insertRow();

      // 선택 표시
      var cell1 = newRow.insertCell(0);
      cell1.textContent = "선택 " + (index + 1);

      // 타입 이름
      var cell2 = newRow.insertCell(1);
      cell2.textContent = item.wasteCategoryName;

      // 규격
      var cell3 = newRow.insertCell(2);
      cell3.textContent = item.wasteInfoStandard;

      // 수수료
      var cell4 = newRow.insertCell(3);
      cell4.textContent = item.wasteInfoFee;

      // 삭제 버튼
      var cell5 = newRow.insertCell(4);
      var removeButton = document.createElement('button');
      removeButton.className = 'selectBtn';
      var removeImage = document.createElement('img');
      removeImage.src = '../../../resources/assets/img/reservation/X.png';
      removeButton.appendChild(removeImage);

      // infoNum(전송되어야 하는 데이터)
      let infoNo = newRow.insertCell(5);
      infoNo.setAttribute('name', 'wasteInfoNo');
      infoNo.setAttribute('value', item.wasteInfoNo);

      // 제거 버튼에 클릭 이벤트를 추가하여 선택한 아이템을 제거합니다.
      removeButton.addEventListener('click', function () {
        removeFromSelectTable(item);
        var numberInput = trElement.querySelector('input[type=number]');
        numberInput.value = parseInt(numberInput.value) - 1;
      });

      cell5.appendChild(removeButton);
    });
  }
  }

  function sendSelectedItems() {
    if (selectedItems.length === 0) {
      alert('선택된 목록이 없습니다.'); // 선택된 목록이 없는 경우 경고 표시
      return;
    }

    // 폼 엘리먼트를 생성
    var form = document.createElement('form');
    form.action = '/reservation/select/insert.do';
    form.method = 'POST'; // POST 요청 사용

    // 선택한 아이템을 반복하여 폼 필드로 추가
    selectedItems.forEach(function (item, index) {
      // 아이템 정보를 hidden으로 추가하기
      var itemInput = document.createElement('input');
      itemInput.type = 'hidden';
      itemInput.name = 'wasteInfoNoList'; // 서버에서 사용할 필드 이름
      itemInput.value = item.wasteInfoNo;
      form.appendChild(itemInput);
    });

    // 폼을 문서에 추가
    document.body.appendChild(form);

    console.log(form);
    // 폼을 자동으로 제출
    form.submit();

  }

  // "신청하기" 버튼을 클릭할 때 폼을 전송하는 이벤트 핸들러
  document.getElementById('submitBtn').addEventListener('click', function() {
    sendSelectedItems();
  });



</script>

</body>

</html>