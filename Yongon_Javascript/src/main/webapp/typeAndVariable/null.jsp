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
// 함수가 호출됐으나 유효 값 반환할 수 없는 경우 명시적으로 null을 반환.
// HTML 문서에 myElem 클래스를 갖는 요소가 없다면 null을 반환.
var element = document.querySelector('.myElem');
console.log(element);		// null

// 타입을 나타내는 문자열을 반환하는 typeof 연산자로 null 값을 연산해보면
// null이 아닌 object가 나오므로 주의.
var foo = null;
console.log("타입 나타내는 typeof를 null값에 연산했을 때 :"+typeof foo);	// object

// 따라서 null 타입을 확인하려면 typeof가 아닌 일치연산자(===)를 사용.
var foo2 = null;
console.log(typeof foo2 === null); 	// false
console.log("일치연산자(===)로 null값에 연산했을 때 :"+(foo2 === null));				// true
</script>
</body>
</html>