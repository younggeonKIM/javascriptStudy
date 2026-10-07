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
		weight : "58kg",
		// 화살표 함수를 사용하면, 해당 객체가 아닌 객체 외부의 global 스코프를 가리키므로 일반 함수 형태의 오버라이딩을 사용.
		// 또는 템플릿 리터럴 [ `` 내부에 $와 {} ] 을 사용함.
		toString () {
			 return this.name +"는 "+this.age+"살이고, "+this.height+"에 "+this.weight+"나갑니다."
		}
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
// 객체가 immutable (불변) 객체인지 조사.
console.log("불변 객체인지 조사.");
console.log(Object.isFrozen(person2));		// true


// 객체를 새 프로퍼티 추가하는 것만 금지시킬 수도 있음.
Object.seal(person);
person.name="종웅";
person.gameLevel = 200;
//기존 프로퍼티의 변경만 적용되고, 새 프로퍼티 추가하는 것은 불가능함.
console.log(person);
console.log("포장, 봉인 객체인지 조사.");
console.log(Object.isSealed(person));		// true

// toString() 함수는 기본 사용 시에는 별로 유용하지 않을 수 있음.
console.log(Object.toString(person));
console.log(person.toString());

// valueOf() 함수는 객체 그대로의 형태를 보여줌.
console.log(person.valueOf());

</script>
</body>
</html>