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
const person = {
		name : "영건",
		age : 29,
		height : "160cm",
		weight : "58kg"
}
const obj = {
		nickname : "foo",
		__proto__: person
}
console.log(obj);							
document.write(obj.name);		// 영건
</script>
</body>
</html>