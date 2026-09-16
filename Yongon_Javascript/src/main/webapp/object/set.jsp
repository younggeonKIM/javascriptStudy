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
// set 역시 미리 만들어진 객체 중 하나임.
const set1 = new Set();
// set에 add() 함수를 통해 값 데이터만을 삽입 가능하며, 이 때 해당 값은 unique함.
set1.add('Hi');
// 만약 중복된 값을 또 설정하면, set의 size 등에 아무 변화를 일으키지 않음.
set1.add('Hi');
set1.add('Hello');


console.log(set1.has('Hi'));				// true
console.log(set1.has('Hi Hello'));		// false
console.log(set1);								// Set(2) { 'Hi', 'Hello' }


console.log(set1.size);						// 2
set1.delete('Hi');								
console.log(set1.size);						// 1



</script>
</body>
</html>