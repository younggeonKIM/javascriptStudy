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
const a = Infinity;
console.log(a);
console.log("Infinity 와 BigInt 10N을 비교 : " + (BigInt(10n) < a));


const b = [340303,  32, 344, BigInt(100), 5467, 11111, 1,  BigInt(1000), Infinity];
// 양수면 앞으로 음수면 뒤로, 산술연산으로 정렬을 하면 Number 자료형과 BigInt 자료형이 섞여있어 type 오류가 발생함.
b.sort(function (firstVal, secondVal){

	if (firstVal > secondVal){
		return 1;
	}
	if (secondVal > firstVal){
		return -1;
	}
	
	return 0;
});
// [ 1, 32, 100n, 344, 1000n, 5467, 11111, 340303, Infinity ]
console.log(b);

const c = 30000;
const d = 100n;
// true, 30000은 종이컵에 담긴 30L, 100n은 덤프트럭에 담긴 100mL 의 물이라고 생각하면 됨.
console.log("Number 자료형과 BigInt 자료형의 숫자를 비교 결과 : "+(c>d));

</script>
</body>
</html>