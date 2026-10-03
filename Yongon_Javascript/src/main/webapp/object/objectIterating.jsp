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
		[ Symbol('id') ] : "boo",
		__proto__: person
}

// 첫 번째 객체 순회 방법 (아주 기본적이고 기초적인 방법, 객체 고유키만을 iterate함.)
console.log(Object.keys(obj));				// nickname
document.write(Object.keys(obj));		// nickname
document.write(Object.values(obj));		// foo
document.write(Object.entries(obj));		// nickname : foo

</script>
</body>
</html>