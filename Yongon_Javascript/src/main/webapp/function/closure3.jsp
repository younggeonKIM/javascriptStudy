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

// 정보의 은닉
function Counter() {

	// 카운트를 유지하기 위한 자유 변수
	var counter = 0;

	// 클로저 
	this.increase = function() {

		return ++counter;
	};

	// 클로저
	this.decrease = function() {

		return --counter;
	};
}
const counter = new Counter();

console.log(counter.increase());	// 1
console.log(counter.decrease());		// 0
</script>
</body>
</html>