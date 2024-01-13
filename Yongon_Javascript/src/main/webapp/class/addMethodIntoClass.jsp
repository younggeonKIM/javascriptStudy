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
// 클래스 메서드 정의 -> 객체 리터럴에서 사용하던 문법과 유사한 문법
	class Calculator {

		add(x, y) {

			return x + y;
		}
		subtract(x, y) {

			return x-y;
		}
	}
	let calc = new Calculator();
	console.log(calc.add(1, 10));		// 11

// 임의 표현식을 대괄호로 둘러싸 메서드의 이름으로 사용 가능
	const methodName = 'introduce';	// 클래스 메서드 이름

	class Person {

		constructor({name, age}) {

			this.name = name;
			this.age = age;
		}

		// 아래 메서드 이름은 'introduce' 가 됨.
		[methodName] () {

			return `안녕하세요, 제 이름은 \${this.name}입니다.`;
		}
	}
	console.log(new Person({name: '김영건', age: 28}).introduce());	// 안녕하세요, 제 이름은 김영건입니다.

// Getter / Setter
	class Account {

		constructor() {

			this._balance = 0;
		}
		get balance() {

			return this._balance;
		}
		set balance(newBalance) {

			this._balance = newBalance;
		}
	}
	const account = new Account();
	account.balance=10000;
	account.balance;	// 10000

// 제너레이터
	class Gen {

		*[Symbol.iterator]() {

			yield 1;
			yield 2;
			yield 3;
		}
	}

	// 1, 2, 3이 차례대로 출력됨.
	for (let n of new Gen()) {

		console.log(n);
	}
</script>
</body>
</html>