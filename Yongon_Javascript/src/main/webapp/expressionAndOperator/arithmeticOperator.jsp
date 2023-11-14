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
var x = 5, result;

// 선대입 후증가 (Postfix increment operator)
result = x++;
console.log(result, x); // 5 6

// 선증가 후대입 (Prefix increment operator)
result = ++x;
console.log(result, x); // 7 7

// 선대입 후감소 (Postfix decrement operator)
result = x --;
console.log(result, x); // 7 6

// 선감소 후대입 (Prefix decrement operator)
result = --x;
console.log(result, x); // 5 5


// 단항 연산자 + 는 피연산자의 어떠한 효과도 없고 음수를 양수로 반전하지 않음.
// 숫자 타입이 아닌 피연산자에 사용하면 피연산자를 숫자 타입으로 변환해 반환.
console.log(-10) // -10
console.log(-'10'); // -10
console.log(-true); // -1
console.log(-false); // -0

</script>
</body>
</html>