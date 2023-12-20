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

// 함수 선언식 (function 키워드)
function hello(name){

	console.log(name);
}
hello('영건');

// 함수 표현식 (함수 리터럴 이용)
var hello2 = function(name) {

	console.log(name);
}
hello2('영건쨩');

// 객체 방식 (Function 객체를 이용)
var hello3 = new Function('name', 'console.log(name)');
hello3('김영건');


// 즉시실행 함수(익명 함수)
var hello4 = (function (){

	var _age = 30;
	var _hello = function(){

		console.log('hello');
	}
	return {

		age : _age,
		hello : _hello
	}
}());
console.log(hello4.age);		// 30
hello4.hello();						// hello
hello4.age = 28;
console.log(hello4.age);		// 28
</script>
</body>
</html>