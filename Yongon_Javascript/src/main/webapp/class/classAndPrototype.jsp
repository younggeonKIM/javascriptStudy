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
// 객체의 프로토타입 확인
	function Person() {}
	
	
	Person.prototype.eyes = 2;
	Person.prototype.nose = 1;
	
	let kim = new Person();
	let park = new Person();
	
	console.log(kim.eyes);	// => 2
	console.log(park.nose);		// => 1

// __proto__ 프로퍼티로 자신의 프로토타입 내부 슬롯에 접근
	const 꼬부기 = {};
	const 이브이 = {};

	꼬부기.__proto__ = 이브이;
	
	console.log(꼬부기);
	console.log(이브이);
</script>
</body>
</html>