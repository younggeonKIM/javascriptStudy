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

const compareNum = (num1, num2) => {

	// 날짜 오브젝트인지 체크
	if(num1 instanceof Number & num2 instanceof Number){

		if( num1 > num2 ){

			return 1;
		} else if(num1 < num2 ) {

			return 2;
		} else {

			return 0;
		}
	} else {

		console.log('인자가 숫자 객체가 아닙니다.');
		return "error";
	}
}

console.log(compareNum("문자열", 4));
	// console => 인자가 숫자 객체가 아닙니다. error
console.log(compareNum(3, 4));
	// console => 인자가 숫자 객체가 아닙니다. error

let num1 = new Number(4);
let num2 = new Number(12);
console.log(compareNum(num1, num2));
	// console => 2
</script>
</body>
</html>