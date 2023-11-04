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
console.log(Boolean(''));	// false
console.log(Boolean(undefined));	// false
console.log(Boolean(0));	// false
console.log(Boolean(-0));	// false
console.log(Boolean(NaN));	// false

// false 일 것 같지만 ture인 값들
console.log(Boolean([]));	// true
console.log(Boolean({}));	// true

// 문자열 'true', 'false' 처리
console.log("문자열 true : "+Boolean('true'));		// true
console.log("문자열 false : "+Boolean('false'));		// false

console.log("JSON parse로 true 처리 : "+JSON.parse('true'));		// true
console.log("JSON parse로 false 처리 : "+JSON.parse('false'));		// false

</script>
</body>
</html>