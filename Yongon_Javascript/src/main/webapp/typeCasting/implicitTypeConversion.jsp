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
console.log(50+50);	// 100
console.log(100+"점"); 	// "100점"
console.log("100"+"점");		// "100점"
console.log("10"+false);	// "100"
console.log(99+true);		// 100

var trans = 100; // number
Object(trans);	// 100
console.log(typeof trans);		// Number
toString(trans);	//"100"
console.log(typeof trans);		// String
Boolean(trans);	// true
console.log(typeof trans);		// Boolean

Number("12345");	// 12345
Number("2"*2);		// 4
</script>
</body>
</html>