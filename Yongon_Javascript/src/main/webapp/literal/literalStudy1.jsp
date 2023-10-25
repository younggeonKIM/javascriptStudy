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
var car = {
		name : "스파크LTZ",
		color : "은색",
		price : 10000000,
		info : function(){
			console.log(this.name + "의 색상은 "+this.color+"이고 가격은 "+this.price+"원 입니다.");
			}
};
console.log(car.name);
console.log(car.color);
console.log(car.price);
car.info()
car.fuel = "가솔린"; /* 새로운 속성 추가하기 */
console.log(car); /* 새로운 속성 car 객체에 추가됐는지 확인 */
</script>
</body>
</html>