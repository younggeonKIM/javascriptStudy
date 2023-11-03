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
let positiveInfinity = 10 / +0; 
console.log(positiveInfinity); // Infinity

let negativeInfinity = 10 / -0; 
console.log(negativeInfinity); // -Infinity

console.log(typeof(positiveInfinity), typeof(negativeInfinity));

let a = 0.1;
let b = 0.2;
let c = 0.1+0.2;
console.log(c === 0.3); // false

function equal(n1, n2){
	
	return Math.abs(n1-n2) < Number.EPSILON; 
}
console.log(equal(0.1+0.2, 0.3)); // true
</script>
</body>
</html>