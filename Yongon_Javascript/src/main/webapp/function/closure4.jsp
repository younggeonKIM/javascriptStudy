<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">

var arr = [];

for(var i = 0 ; i < 5 ; i++) {

	arr[i] = function() {

		return i;
	};
}
for (var j = 0 ; j < arr.length ; j++) {

	console.log(arr[j]());
}
// 클로저를 사용해 정상 동작하는 코드 작성
	var arr2 = [];

	for (var i = 0; i < 5; i++){
  		arr2[i] = (function (id) { // ②
    		return function () {
      			return id; // ③
    		};
  		}(i)); // ①
	}

for (var j = 0; j < arr2.length; j++) {
  console.log(arr2[j]());
}

// 함수형 프로그래밍 기법(고차 함수 사용)
	const arr3 = new Array(5).fill();

	arr3.forEach((v, i, array) => array[i] = () => i);

	arr3.forEach(f => console.log(f()));
</script>
</body>
</html>