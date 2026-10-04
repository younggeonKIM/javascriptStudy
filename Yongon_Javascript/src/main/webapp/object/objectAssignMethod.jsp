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
		[ Symbol('id') ] : "boo"
}

const obj2 = {
		nickname : "siu",
		[ Symbol('age') ] : 30
}
// 얕은 객체 복사 및 객체 병합 기능
// 2 번째 파라미터인 source가 중복된 프로퍼티 값을 덮어 씌움.
const mergedObj = Object.assign(obj2, obj);
console.log(mergedObj);

const newObj = Object.assign(obj, person);
console.log(newObj);



</script>
</body>
</html>