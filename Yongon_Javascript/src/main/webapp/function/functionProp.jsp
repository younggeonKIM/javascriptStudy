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

// argument 프로퍼티
function sum(a, b) {
	console.log(arguments);
	return a + b ;
}
/* 
console.dir(sum); */
sum(10, 2);


// caller 프로퍼티
function deduc(a, b){

	console.log(deduc.caller);
	return a-b;
}
function calculator(x, y){

	let deduc_ = deduc(x, y);
	return deduc_; 
}
calculator(10, 4);		// f calculator(x,y) {...}
deduc(2, 1);				// null -> 브라우저에서 실행했으므로 caller가 없음.

// length 프로퍼티
	// 매개변수 0개
	function func1() {}
	// 매개변수 1개
	function func2(a) {}
	// 매개변수 2개
	function func3(a, b) {}
	
	console.log(func1.length);
	console.log(func2.length);
	console.log(func3.length);
</script>
</body>
</html>