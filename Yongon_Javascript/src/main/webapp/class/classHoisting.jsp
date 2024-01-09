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

const Person = '';
{
	console.log(Person);
	// 만약 호이스팅이 발생하지 않으면 ''이 출력돼야 함.
	// 그렇지만 실제 결과는 'ReferenceError: Cannot access Person before initialization'

	class Person{}
	
}
</script>
</body>
</html>