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
const person = {
		name : "영건",
		age : 29,
		height : "160cm",
		weight : "58kg"
}
const obj = {
		nickname : "foo",
		bigbang : "YB",
		[ Symbol('id') ] : "boo",
		__proto__: person
}

// 첫 번째 객체 순회 방법 (아주 기본적이고 기초적인 방법, 객체 고유키만을 iterate함.)
console.log(Object.keys(obj));				// [ 'nickname', 'bigbang' ]
document.write(Object.keys(obj)+"</br>");		// nickname, bigbang
document.write(Object.values(obj)+"</br>");		// foo, YB
document.write(Object.entries(obj)+"</br>");		// nickname, foo, bigbang, YB

Object.entries(obj).forEach(function([key, value]){
	console.log(key);
	document.write(key+"</br>");
})

// 두 번째 객체 순회 방법 (상속받은 객체의 프로퍼티까지 포함해 전부 키를 순회하는 방법)
for(key in obj){
	document.write(key+" ");
}

</script>
</body>
</html>