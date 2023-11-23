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
// 객체 변수를 복사하면 참조가 복사되고 객체가 복제되지 않음.
let user ={name : "John"};
let admin = user;		// copy the reference


// 프로퍼티 (property)
var foo = {};	// foo 객체 생성.
foo.a=1;			// . 연산자를 이용해 a라는 이름의 프로퍼티 생성하며 a에 1이라는 값 할당.
var sum = foo.a + 10;	// . 연산자를 이용해 foo 객체의 a 프로퍼티에 접근해 값을 활용.
console.log(sum);			// 11
</script>
</body>
</html>