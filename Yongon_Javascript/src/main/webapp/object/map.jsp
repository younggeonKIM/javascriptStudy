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
// map은 미리 만들어진 객체 중 하나임.
const map1 = new Map();
// map에 set() 함수를 통해 키와 값 데이터를 삽입 가능하며, 이때 키는 unique함.
map1.set(1, 'Hi');
// 만약 중복된 키에 값을 또 설정하면, 기존 값은 버리고 새로운 값으로 덧씌워져 버림.
map1.set(1, 'Hello');

console.log(map1.get(1));		// Hello

</script>
</body>
</html>