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
// 인스턴스 생성 순서
	class Person {
	
		constructor(name) {
	
			// 1. 내부 코드 실행 전에, 암묵적으로 빈 객체 생성
			// 인스턴스의 __proto__ -> 클래스.prototype
			// 인스턴스 this에 바인딩
			console.log(this); // Person {}
	
			// 2. this에 바인딩된 인스턴스를 초기화
			this.name = name;
	
			// 3. 완성된 인스턴스가 바인딩된 this를 암묵적으로 반환
		}
	
		sayHi() {
	
			console.log('Hi');
		}
	
		static sayHello() {
	
			console.log('Hello');
		}
	}
	
	const harry = new Person("Harry");

// 접근자 프로퍼티
	class Korean {

		constructor(firstName, lastName) {

			this.firstName = firstName;
			this.lastName = lastName;
		}

		// getter 함수
		get fullName() {

			[this.firstName, this.lastName] = name.split(' ');
		}

		// setter 함수
		set fullName(name) {

			[this.firstName, this.lastName] = name.split(' ');
		}

		// fullName 은 접근자 프로퍼티임.
		// get fullName(), set fullName(name) 은 각각 [[get]], [[set]] 슬롯에 바인딩될 getter, setter 함수임.
	}

// private 필드
	class Japanese {

		// private 필드는 반드시 constructor가 아닌 클래스 몸체에 정의.
		#name = '';

		constructor(name) {

			// private 필드 참조
			this.#name	 = name;
		}

		get name() {

			return this.#name;
		}
	}
	const sasa = new Japanese('sasa');
	/* console.log(sasa.#name);		// Private field '#name' must be declared in an enclosing class */
	console.log(sasa.name);

// static 필드
	class MyMath {

		// static public 필드 정의
		static PI = 22/7;

		// static private 필드 정의
		static #num = 10;

		// static 메서드
		static increment() {

			return ++MyMath.#num;
		}
	}
	const math = new MyMath();
	console.log(math.PI);	// undefined
	console.log(math.increment);	// undefined

	console.log(MyMath.PI);		// 3.142857142857143
	console.log(MyMath.increment());		// 11
</script>
</body>
</html>