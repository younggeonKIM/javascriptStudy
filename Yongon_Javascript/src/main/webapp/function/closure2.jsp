<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <p>전역 변수를 사용한 Counting</p>
  <button id="inclease">+</button>
  <p id="count">0</p>
  <script type="text/javascript">
  // 추천하지 않는 코드
  var incleaseBtn = document.getElementById('inclease');
  var count = document.getElementById('count');

  // 카운트 상태를 유지하기 위한 전역 변수
  var counter = 0;

  function increase() {
    return ++counter;
  }

  incleaseBtn.onclick = function () {
    count.innerHTML = increase();
  };

  // 추천하는 코드
  
  </script>
  <p>지역 변수를 사용한 Counting</p>
  <button id="inclease2">+</button>
  <p id="count2">0</p>
  <script type="text/javascript">
    var incleaseBtn2 = document.getElementById('inclease2');
    var count2 = document.getElementById('count2');

    function increase2() {
      // 카운트 상태를 유지하기 위한 지역 변수
      let counter2 = 0;
      return ++counter2;
    }

    incleaseBtn2.onclick = function () {
      count2.innerHTML = increase2();
    };
  </script>
  <p>클로저를 사용한 Counting</p>
  <button id="inclease3">+</button>
  <p id="count3">0</p>
  <script type="text/javascript">
    var incleaseBtn3 = document.getElementById('inclease3');
    var count3 = document.getElementById('count3');

    var increase3 = (function () {
      // 카운트 상태를 유지하기 위한 자유 변수
      var counter = 0;
      // 클로저를 반환
      return function () {
        return ++counter;
      };
    }());

    incleaseBtn3.onclick = function () {
      count3.innerHTML = increase3();
    };
  </script>
</body>
</html>
</body>
</html>