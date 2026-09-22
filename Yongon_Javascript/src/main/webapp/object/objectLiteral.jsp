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
const codeName = 'Hero yui';
const name = 'favoriteBook';
const myObj = {

		name : '영건',
		age : 30,
		favoriteBook : [ '세상을 움직이는 108가지 법칙', '아비투스', '숫타니타파', '겐지이야기' ],
		[codeName] : 'secretAgent',
		job : null 
}
console.log(myObj);

// 객체 내를 순회하려면 [ dot notation ] 방식과 [ bracket notation ] 방식이 있음.
console.log(myObj.name);			// 영건
console.log(myObj['name']);		// 영건

// [ bracket notation ] 의 장점은 객체 외에서 선언된 변수명을 가져와서 객체 내의 프로퍼티를 찾을 수 있다는 것.  
console.log(myObj[name]);		// [ '세상을 움직이는 108가지 법칙', '아비투스', '숫타니타파', '겐지이야기' ]

// 명시되고 선언되지 않은 객체 프로퍼티 키에 접근하는 경우, 에러가 발생되지 않고, 대신 undefined 값을 반환함.
console.log(myObj.address);			// undefined (address라는 키는 정의되지 않았음.)


// 객체 프로퍼티 키와 값을 추가하기
myObj.girlfriend = "도연";
console.log("myObj 객체에 프로퍼티 추가 및 삭제 확인")
console.log(JSON.stringify(myObj));
console.log(myObj.girlfriend);


// 객체 프로퍼티 키와 값 삭제하기
delete myObj.girlfriend;
console.log(JSON.stringify(myObj));
console.log(myObj.girlfriend);

// 단축 표기법
/* 이 객체 리터럴 선언법과 밑의 단축 표기법은 결과가 같음.
const chrName = 'shinon';
const myObj2 = {
		chrName: chrName
};
 */
const chrName = 'shinon';
const myObj2 = {
		chrName
};
console.log(myObj2);


// 생성자 함수 편집
function MyObj(name, age, favoriteBook, job){

	this.name=name;
	this.age=age;
	this.favoriteBook=favoriteBook;
	this.job=job;
}
const myObj3 = new MyObj('이시은', 30, ["오즈의 마법사", "스크루지", "올리버 트위스트"], "가수");
console.log(myObj3);

</script>
</body>
</html>