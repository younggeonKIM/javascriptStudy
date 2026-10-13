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
const name = '영건	';
const defaultName = name != null ? name : '이름없음';
console.log(defaultName);		// 영건

// [ null coalescing ] 연산자를 사용하면 3항 연산자를 사용하지 않아도 되며, 코드가 더 간단하고 깔끔해짐.
const defaultName2 = name ?? '이름없음';
console.log(defaultName2);		// 영건


const person = {
		/* ygKim : {
			son : '주형'
		}  */
}
// 만약 person 내의 ygKim 프로퍼티가 정의되지 않을 경우에, ygKim 프로퍼티 내에 있던 son 프로퍼티를 읽으려고 할 경우, 
// undefined.son 을 접근하려고 한 것이 되므로 브라우저 상에서 에러가 발생함.
// 이럴 때 [ ? ] 연산자를 사용해 [ optional chaning ] 문법을 사용하며, 아까 봤던 [ ?? ] 연산자로 [ null coalescing ] 을 하여 undefined 값을 
// 처리하도록 함.
console.log(person?.ygKim?.son ?? '신원 불명');
</script>
</body>
</html>