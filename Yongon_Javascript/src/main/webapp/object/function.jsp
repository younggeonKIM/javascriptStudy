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
function func1(fun, num){

	return fun(num);
}
function func2(num){

	return num+2;
}
console.log(func1(func2, 2));					// 4
console.log(typeof func1);						// function
console.log(func1 instanceof Object);	// true

// [ : ] 콜론과 [ => ] 화살표 함수가 포함된 객체
const obj = {
		name : 'ygkim',
		age : 29,
		sayHello : () => console.log("hello!")
}
obj.sayHello();

// [ : ] 콜론과 화살표 함수를 제거한 [ {} ] 중괄호 블록으로 기존의 전통적 함수 선언을 포함하는 객체
const obj2 = {
		name : 'hyokyungJeon',
		age : 29,
		sayHi () {
			console.log("Hi");
		}
}
obj2.sayHi();
</script>
</body>
</html>