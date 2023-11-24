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
// 객체 리터럴 
	// 프로퍼티 없는 빈 객체
	var empty = {};
	// 두 개의 프로퍼티 x, y를 정의
	var point = { x:0, y:0 };

	var book = {

			"main title" : "해리포터",
			"sub-title" : "불사조 기사단",
			"for" : "전세계 독자들",
			author: {

					fullname : "Joanne Kathleen Rowling",
					nickname : "Jo Rowling"
			}		
	}

// Object.create() 메서드
var obj1 = Object.create({x:1, y:2});	// obj1는 x, y의 프로퍼티 상속받음.
var obj2 = Object.create(null);			// 프로토타입을 갖지 않는 새 객체 생성.
var obj3 = Object.create(Object.prototype);			// {}, new Object() 와 같은 일반적 빈 객체 생성.
console.log(obj1);
console.log("o1의 x프로퍼티 값 :" + obj1.x);
console.log(obj2);
console.log(obj3);

// 프로퍼티 접근 및 설정
	// 프로퍼티 값을 가져오기 위해 '.' 또는 '[]' 를 사용.
	var author= book.author;
	var name = author.nickname;	
	// 위의 author 객체 변수를 참조. 위의 author는 또다시 위의 book 객체 변수를 참조.
	
	var title = book["main title"];
	console.log("책 제목 : "+book["main title"]);
	
	// 프로퍼티 만들거나 설정하는 것도 같은 방법 사용.
	book.edition = 6;
	book["main title"] = "Maze Runner";
	console.log("재설정한 책 제목 :" + book["main title"]);

// 프로퍼티 검사
	// 1. in 연산자 : 존재하면 true 반환.
	var o = {x:1};
	console.log("o 객체에 x 프로퍼티가 존재하는지 검사한 결과 : " + ("x" in o));		// true
	console.log("o 객체에 x 프로퍼티가 존재하는지 검사한 결과 : " +( o.x !== undefined));		// true
	
	// 다음과 같은 경우는 o.x !== undefined를 해도 false 반환.
	var o2 = {x:undefined};
	console.log("o2 객체에 x 프로퍼티가 존재하는지 검사한 결과 : " + (o2.x !== undefined));		// false

	// 2. hasOwnProperty() 메서드
	console.log(o.hasOwnProperty("x"));		// true
	console.log(o.hasOwnProperty("y"));		// false (없으므로)
	console.log(o.hasOwnProperty("toString"));		// false (상속된 프로퍼티이므로)
/* 
	// 3. propertyIsEnumerable() 메서드 (상세 검사)
	function inherit() {
		
	}
	var o3 = inherit({y:2});
	o3.x = 1;
	o3.propertyIsEnumerable("x");		// true
	o3.propertyIsEnumerable("y");		// false (상속받은 프로퍼티)
	o3.propertyIsEnumerable("toString");		// false (내장 프로퍼티 && 열거 불가) */

// 프로퍼티 열거(순회)
	// 1. for/in 루프
		// 1.1 extend()
		function extend(o, p) {

			// p의 열거 가능한 모든 prop을 o에 추가함.
			for (prop in p) {

				o[prop] = p[prop];
			}
			return o;
		}
		var book2={};
		console.log(extend(book2, book));
		console.log(book2["main title"]);

		// 1.2 merge()
		function merge(o, p) {

			for(prop in p){

				// 열거 가능한 프로퍼티 중, 같은 이름의 프로퍼티는 제외.
				if(o.hasOwnProperty[prop]) continue;
				o[prop] = p[prop];	
			}
			return o;
		}
		var book3 ={

			"main title" : "H마트에서 울다"
		}
		console.log(merge(book3, book));
		console.log(book3["main title"]);

		// 1.3 restrict()
		function restrict(o, p){

			for (prop in p) {

				// o의 프로퍼티 중 p의 프로퍼티 제거
				if(!(prop in p)) delete o[prop];
			}
			return o;
		}
	// 2. Object.keys() 함수
	console.log(Object.keys(book));
	// 3. Object.getOwnPropertyNames() 함수
	console.log(Object.getOwnPropertyNames(book));

</script>
</body>
</html>