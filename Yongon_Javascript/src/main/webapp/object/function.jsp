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

</script>
</body>
</html>