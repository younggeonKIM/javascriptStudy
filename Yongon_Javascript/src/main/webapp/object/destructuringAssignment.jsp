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

const a = [1, 2, 3];
const [ first, ... others] = a;

// 구조 분해 할당식을 통해 배열 첫 인덱스 값을 추출해
// first에 할당하고, 나머지 값을 전개연산자를 통해
// others에 할당.
console.log(first, others);	// 1, [2, 3] 
</script>
</body>
</html>