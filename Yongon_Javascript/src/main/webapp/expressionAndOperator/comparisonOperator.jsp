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

// 동등 비교 (loose equality, values only)
console.log(5 == 5); 			// true
	// 타입은 다르지만 암묵적 타입 변환을 통해 타입을 일치시키면 
	// 같은 값을 가짐.
	console.log(5 == '5'); 		// true
	console.log(5 == 8); 		// false

// 일치 비교 (strict equality, type and values)
console.log(5 === 5); 		// true 
console.log(5 === '5'); 		// false 

// 그 어떤 것과도 동등하지 않은 값 NaN
console.log(Number('abc'));		// NaN

console.log("자기자신과 일치비교 시 false가 되는 유일한 값 NaN === NaN : ");
console.log(NaN === NaN); // false

// type coersion을 이용한 Boolean equality 검사
console.log("자료형 강제 변환을 이용해 loose equality와 strict equality 결과 비교")
console.log(true == 1);				// true (== 동등 비교 시 자료형 암묵적 변환을 해, 값만 비교하기 때문에 true)
console.log(true === 1);			// false

console.log(false == 0);			// true (== 동등 비교 시 자료형 암묵적 변환을 해, 값만 비교하기 때문에 true)
console.log(false === 0);			// false

// null 과 undefined 값 비교
console.log("null 과 undefined 값 동등성 확인");
console.log(null == null);						// true 
console.log(null == undefined);			// true (동등 비교, loose equality 시행 결과 일치)
// 따라서 null과 undefined가 아닌 값을 찾고 싶을 때에는 null과 약한 비교 연산자 [ == ] 를 써서 비교해 undefined까지 함께 고려하는 것이 좋음.
console.log(null === undefined);			// false (일치 비교, strict equality 시행 결과 불일치)

// null 은 undefined 외에 다른 어떤 값과도 동등성을 갖지 않음.
console.log("null과 undefined 제외한 다른 값들을 비교");
console.log(null == 0);						// false
console.log(null == false);				// false
console.log(null == true);					// false
console.log(null == 1);						// false
console.log(null == NaN);				// false
console.log(null == '');					// false
console.log(null == []);					// false

// 빈 객체 동등 비교 (loose equality) 및 일치 비교 (strict equality) 시 결과 확인
console.log("빈 객체 비교 시행");
console.log({} === {});					// false
console.log({} == {});						// false

// 객체를 비교할 때에는 객체 안의 값을 비교하는 게 아니라, 두 객체가 같은 객체인지만 검사하는 것임.
const obj1 = {};
console.log("빈 객체를 선언하고 그 객체끼리 비교 시행");
console.log(obj1 == obj1);							// true
console.log(obj1 === obj1);						// true

// 배열도 마찬가지임. 배열도 객체이기 때문.
console.log("빈 배열 비교 시행");
console.log([] === []);					// false
console.log([] == []);						// false

const arr1 = [];
console.log("빈 배열을 선언하고 그 배열끼리 비교 시행");
console.log(arr1 == arr1);							// true
console.log(arr1 === arr1);						// true


console.log("isNaN() 함수 사용 시 :");
console.log(isNaN(NaN));	 // true
</script>
</body>
</html>