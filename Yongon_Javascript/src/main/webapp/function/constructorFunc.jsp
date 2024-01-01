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

function User(name, age) {

	this.name = name;
	this.age = age;
}
let user1 = new User('Mike', 30);
let user2 = new User('Jane', 22);
let user3 = new User('Tom', 17);
console.log("user1의 이름 : "+user1.name+" user2의 이름 : "+user2.name);
</script>
</body>
</html>