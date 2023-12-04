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
// Object.assign()	-> 열거 가능한 속성들을 대상 객체로 복사.

var user ={
		name : "Mike",
		age : 30
}

var cloneUser = user;	// 객체주소 참조값이 복사됨. -> 서로 공유함. 진정한 복사 x

var cloneUser2 = Object.assign({}, user); // 빈 객체는 초기값, 내용을 그대로 복사.
var cloneUser3 = Object.assign({gender : 'male'}, user);	// gender라는 프로퍼티를 추가해서 객체값을 얻음.
																								// {gender : 'male', name: "mike", age : 30}
var cloneUser4 = Object.assign({name: "Tom"}, user);		// 같은 프로퍼티면 덮어씌워짐.

const user2 = {name : "Mike"}
const age_info = { age: 30}
const gender_info = {gender : "male"}
var cloneUser5 = Object.assign(user2, age_info, gender_info);		// 객체 변수를 합칠 수 있음.

console.log(cloneUser);
console.log(cloneUser2);
console.log(cloneUser3);
console.log(cloneUser4);
console.log(cloneUser5);

// Object.entries()	-> [키, 값] 쌍을 담은 배열을 반환.
const user3={
		name : "Mike",
		age : 30,
		gender : "male"
}

console.log(Object.entries(user3));	// [ ["name", "Mike"], ["age", 30], ["gender", "male"] ]

// Object.is()
var test = { a: 1};
console.log(Object.is(test, test));		// true

console.log(Object.is(null, null));		// true
console.log(Object.is([], []));				// false
console.log(Object.is(0, -0));				// false
console.log(Object.is(-0, -0));				// true
console.log(Object.is(NaN, 0/0));		// true

// Object.getPrototypeOf()		-> 명시된 객체의 프로토타입을 반환.
console.log("객체 프로토타입 : "+Object.getPrototypeOf(cloneUser5));

// delete 		-> 객체 내의 속성을 지울 수 있음.
var obj = {
		a: 'hi',
		b: 'zero',
};
console.log(obj.b);		// zero
delete obj.b;
console.log(obj.b);		// undefined

// hasOwnProperty() 		-> 특정 프로퍼티가 해당 객체에 존재하는지를 검사.
											// 같은 이름의 프로퍼티라도 상속받은 프로퍼티는 false 값을 반환.
var obj2 = {
		example: 'yes',
}
console.log(obj2.example);		// yes
console.log(obj2.hasOwnProperty('example'));		// true
console.log(obj2.toString);			// function toString() { [native code] }
console.log(obj2.hasOwnProperty('toString'));			// false


// propertyIsEnumerable()		-> 특정 프로퍼티가 해당 객체에 존재하고, 열거 가능한 프로퍼티인지를 검사.
function Dog(color, name, age) {

	this.color = color;
	this.name = name;
	this.age = age;
}
var myDog = new Dog("흰색", "마루", 1);
// color 프로퍼티의 enumerable 속성을 false로 설정.
Object.defineProperty(myDog, 'color', { enumerable : false});

document.write(myDog.propertyIsEnumerable("color") + "<br>");		// false
document.write(myDog.propertyIsEnumerable("name") + "<br>");		// true
document.write(myDog.propertyIsEnumerable("age") + "<br>");		// true

// isPrototypeOf()		-> 특정 객체의 프로토타입 체인에 현재 객체가 존재하는지를 검사.
var GrandParent = function() {};

var Parent = function() {};
Parent.prototype = new GrandParent();
Parent.prototype.constructor = Parent;

var Child = function() {};
Child.prototype = new Parent();
Child.prototype.constructor = Child;

var child = new Child();
console.log(Parent.prototype.isPrototypeOf(child));		// true
console.log(GrandParent.prototype.isPrototypeOf(child));		// true

// isExtensible() / Object.preventExtensions() 		-> 새 프로퍼티 추가 가능 여부를 반환 / 새 프로퍼티 추가 금지
	var day = new Date();		// Date 객체를 생성.

	// 객체 day에 새 프로퍼티를 추가 가능한지 검사.
	document.write(Object.isExtensible(day) + "<br>");			// true

	// 해당 객체에 새 프로퍼티 추가할 수 없게 설정.
	var myDay = Object.preventExtensions(day);

	document.write(Object.isExtensible(day));		// false


// toString()		-> 이 메소드를 호출한 객체 값을 문자열로 반환.
	var arr = [10, "문자열", true];	// 배열
	var bool = false;		// 불리언
	function func() { return 0 ;}	// 함수
	arr.toString();			// 10, 문자열, true
	bool.toString();		// false
	func.toString();		// 함수의 소스 코드가 전부 문자열로 반환됨.


// valueOf()		-> 특정 객체의 원시 타입(primitive type)의 값을 반환.
	function func(n) {

		this.number = n;
	}
	myFunc = new func(4);
	document.write("<br>");
	document.write(myFunc + 5);	// ① : [object Object] 5		
										// valueOf()가 호출돼 객체 자신을 반환하므로 산술 연산이 아닌 문자열 결합 연산이 수행됨.

	func.prototype.valueOf = function () { // valueOf() 메소드를 정의함. 
										// prototype 프로퍼티를 이용해 valueOf() 메소드를 정의함.
		return this.number;
	}
	document.write("<br>");
	document.write(myFunc + 5);	// ② : 9

// Object.defineProperty() / Object.defineProperties()			-> 객체 속성 자세하게 정의 가능
var obj4 = {};

Object.defineProperties(obj4, { // 객체 복수 정의 

	a: {
		value: 5, // a: 5로 설정
		writable: false, // 쓰기 불가능
		enumerable: true, // 순회 가능
	},
	b: {
		get: function() { // defineProperties안에 get을 쓰면 getter로 동작

			return 'zero'; 
		},
		set: function(value) { // defineProperties안에 set을 쓰면 setter로 동작

			console.log(this, value);
			this.a = value;
		},
		enumerable: false,
		configurable: false,
	},
	});

	document.write("<br>");
	document.write(obj4.a);		// 5
	document.write("<br>");
	document.write(obj4.b);		// 'zero'
	obj4.a = 10;
	document.write("<br>");
	document.write(obj4.a);		// writable이 false라 그대로 5.
	for(var key in obj) {

		console.log(key);		// b의 enumerable이 false니까 a만 log됨.
	}

	obj4.b = 15;		// 15로 설정되는 대신 set의 내용이 실행됨. set의 value는 15.
	document.write("<br>");
	document.write(obj4.a);			// this.a = value 로 인해 15로 바뀌어야 하나 writable이 false라 무시됨.
	document.write("<br>");
	document.write(obj4.b);			// 그대로 'zero'
	/* Object.defineProperty(obj4, 'b', {

		value: 5
	});	 */	    		// Uncaught TypeError: Cannot redefine property: b
	/* Object.defineProperty(obj4, 'b', { enumerable: true } ); */		// b의 순회가능함을 true로.

// Object.getOwnPropertyDescriptor()		-> 객체의 이름붙은 속성 기술자를 반환.
console.log(Object.getOwnPropertyDescriptor(obj4, 'b'));
		// { enumerable: false, configurable: false, get: function() {}, set: function(value) {}, [[Prototype]]: Object }
		
// Object.getOwnPropertyNames()		-> 열거가능하거나 열거불가한 속성들, 즉 모든 속성들의 이름을 포함하는 배열(array)을 반환.
	let obj5 = {
			a: 1,
			b: 2,
			c: 3
	}
	Object.defineProperty(obj5, 'b', { enumerable: false });		// b 속성을 순회불가하게 설정.
	console.log(Object.keys(obj5));		// ['a', 'c']
	console.log(Object.getOwnPropertyNames(obj5));		// ['a', 'b', 'c']


// Object.getOwnPropertySymbols()		-> 주어진 객체에서 바로 찾을 수 있는 모든 심볼 속성을 배열로 반환.
	let obj6 = {
			a:1,
			[Symbol('b')]: 2,
			[Symbol('b')]: 32,
			[Symbol.for('c')]: 33,
			[Symbol('c')]: 34,
			[Symbol.for('c')]: 35,
			[Symbol.for('d')]: 36,
			c: 3
	}
	console.log(Object.keys(obj6));
	console.log(Object.getOwnPropertySymbols(obj6));
</script>
</body>
</html>