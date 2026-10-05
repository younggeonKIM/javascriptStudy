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
const person = {
		name : "영건",
		age : 29,
		height : "160cm",
		weight : "58kg"
}

const person2 = {
		name : "영민",
		age : 29,
		height : "170cm",
		weight : "70kg"
}

const obj = {
		nickname : "foo",
		[ Symbol('id') ] : "boo"
}

const obj2 = {
		nickname : "siu",
		[ Symbol('age') ] : 30
}

const account = {
		money : 5000000
}
const gf = {
		girlfriend : null
}
// 얕은 객체 복사 및 객체 병합 기능 (non-enumerable 프로퍼티들은 복사되지 않음.)
// 2 번째 파라미터인 source가 중복된 프로퍼티 값을 덮어 씌움.
const mergedObj = Object.assign(obj2, obj);
console.log("obj2 assign 결과 ");
console.log(mergedObj);
console.log(obj2);


const newObj = Object.assign(obj, person);
console.log("obj assign 결과 ");
console.log(obj);
console.log(newObj);

Object.assign(person2, account, gf);
console.log("person2 assign 결과 ");
console.log(person2);



// 객체를 immutable 하게 바꿈. (더 이상 객체 상태를 바꿀 수 없음.) 
Object.freeze(person2);
person2.name = "정상영";
person2.eyesight = "1.1";
// 기존의 프로퍼티를 변경할 수도 없고, 새로운 프로퍼티를 추가할 수도 없음.
console.log(person2);

</script>
</body>
</html>