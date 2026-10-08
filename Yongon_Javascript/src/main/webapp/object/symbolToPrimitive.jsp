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
const obj = {
		[ Symbol.toPrimitive ] (hint) {
			if(hint === 'number'){
				return 5;
			} else if (hint === 'string'){
				return 'hello';
			}
			return 2;
		}
};

console.log(Number(obj));		// 5
console.log(obj * 3);				// 15
console.log(obj -1);				// 4
console.log(100 / obj);			// 20

console.log(String(obj));			// hello

// 동등비교 연산을 할 때 같이 number 자료형도 string 자료형도 아닌 애매한 경우 [ Symbol.toPrimitive ] 프로퍼티에 의해 default 값 2를 반환하게 됨.
console.log(obj==2);				// true
// 이항 덧셈 연산은 피연산자에 객체가 있을 경우, 문자열을 합치는 연산이 되거나 산수연산이 될 수 있어 
// 자료형이 확신이 서지 않아 default 값 2로 연산하게 됨.
console.log(obj + 3);				// 5
console.log(obj + {});				// 2

// 일치비교 연산을 할 때에는 Number 자료형을 사용하게 돼 false 반환.
console.log(obj===2);			// false

</script>
</body>
</html>