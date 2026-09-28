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
// Symbol을 할당할 때는 new 키워드 및 생성자를 사용하지 않고 곧바로 할당해줌.
const id = Symbol('id');
const id2 = Symbol('id');

// 두 Symbol 값은 동등 비교, 약한 동등성 비교 (==) 를 해도 일치하지 않다는 false 결과를 반환함, 즉 유일한 식별자로 활용 가능
console.log("두 Symbol 값을 동등 비교 : "+(id == id2));		
console.log("두 Symbol 값을 일치 비교 : "+(id === id2));		

// 만약 정확히 똑같은 일치하는 Symbol 값을 만들고 싶다면 for 함수를 사용해서 const 변수에 Symbol 프로퍼티 값을 할당해주면
// 된다.
const id3 = Symbol.for('id3');
const id4 = Symbol.for('id3');
// Symbol의 for 함수에 똑같은 키(이름)을 넣어주면 Symbol임에도 불구하고 유일하지 않은 매우 동일한 값을 만들 수 있음.
console.log("Symbol.for 함수를 사용하고 두 Symbol 값을 동등 비교 : "+(id3 == id4));		
console.log("Symbol.for 함수를 사용하고 두 Symbol 값을 일치 비교 : "+(id3 === id4));		

const obj = {
		[id] : 'abc',
		[id2] : 0,
		id : 'hi',
		id2 : 'hello',
		[id3] : 'my name is ygKim'
			
}

console.log(obj);

// propertyIsEnumerable() 함수로 객체 내의 Symbol 이 직접 정의됐고, 열거 가능한 속성인지 검사. 
console.log("Symbol id를 검사 : "+obj.propertyIsEnumerable(id));			// true
console.log("Symbol id3를 검사 : "+obj.propertyIsEnumerable(id3));		// true
</script>
</body>
</html>