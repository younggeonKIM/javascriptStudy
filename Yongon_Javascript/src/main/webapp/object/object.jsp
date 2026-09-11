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
// 객체 변수를 복사하면 참조가 복사되고 객체가 복제되지 않음.
let user ={name : "John"};
let admin = user;		// copy the reference


// 프로퍼티 (property)
var foo = {};	// foo 객체 생성.
foo.a=1;			// . 연산자를 이용해 a라는 이름의 프로퍼티 생성하며 a에 1이라는 값 할당.
var sum = foo.a + 10;	// . 연산자를 이용해 foo 객체의 a 프로퍼티에 접근해 값을 활용.
console.log(sum);			// 11

/* // 프로퍼티 추가 시 값 할당 안 할 경우
var yg = new Object();
yg.name= ;		// Uncaught SyntaxError: Unexpected token ';'
console.log(yg.name); */

// 프로퍼티의 삭제
const foo2 = new Object();
foo2.name = 'foo2';
foo2.age = 12;
console.log(foo2.name);		// foo2
console.log(foo2.age); 			// 12

foo2.name = null;
console.log(foo2.name);		// null

// 속성 키와 값 전부 삭제하는 delete 키워드.
delete foo2.name;
// 해당 속성 키는 남겨두고 값만 삭제하는 undefined 할당 방식.
foo2.age = undefined;

// javascript에서는 존재하지 않는 속성 키의 값에 접근하면 undefined 값이 반환됨. 
console.log(foo2.name);		// undefined
// 직렬화해서 로그 출력하면 객체 내에 해당 속성의 키 자체가 사라진 것을 확인할 수 있음.
console.log(JSON.stringify(foo2));
// 객체 출력하면 age 키만 남아있는 것을 확인 가능.
console.log(foo2);


// 진짜 키까지 사라진 건지 아니면 값만 undefined로 바뀐 건지 확인하려면 [ in ] 연산자나 hasOwnProperty() 함수를 사용해 알 수 있음.
console.log('age' in foo2);									// true
console.log(foo2.hasOwnProperty('age'));		// true
console.log('name' in foo2);									// false
console.log(foo2.hasOwnProperty('name'));		// false

</script>
</body>
</html>