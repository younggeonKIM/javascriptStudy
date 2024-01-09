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

class Person	{

	// 생성자 
	constructor (name) {

		this.name = name;
	}
	// 프로토타입 메서드
	sayHi() {

		console.log(`Hi! My name is \${this.name}`);
	}
	// 정적 메서드
	static sayHello() {

		console.log('Hello!');
	}
}
console.log(Person.sayHello());
const person1 = new Person('영건');
console.log(person1.sayHi());
</script>
</body>
</html>