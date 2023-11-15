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

// 동등 비교
console.log(5 == 5); // true
	// 타입은 다르지만 암묵적 타입 변환을 통해 타입을 일치시키면 
	// 같은 값을 가짐.
	console.log(5 == '5'); // true
	console.log(5 == 8); // false

// 일치 비교
console.log(5 === 5); // true
console.log(5 === '5'); // false
console.log("자기자신과 일치비교 시 false가 되는 유일한 값 NaN === NaN : ");
console.log(NaN === NaN); // false

console.log("isNaN() 함수 사용 시 :");
console.log(isNaN(NaN));	 // true
</script>
</body>
</html>