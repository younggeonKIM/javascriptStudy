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

const nodes = document.querySelectorAll('input');
const customLikes = {"0": "hello", "1": "hi", length: 2};
const array = [1, 2, 3];

console.log(typeof nodes);		// 'object'
console.log(typeof array);			// 'object'

console.log(Array.isArray(array));		// true
console.log(Array.isArray(nodes));		// false
console.log(Array.isArray(customLikes));		// false

const customLikes2 = {"0": "hello", "1": "hi", length: 2};
const customObj = {"0": "hello", "1": "hi"};
const customArr = Array.from(customLikes2);		// [hello, hi];
console.log(customArr);
const customArr2 = Array.from(customLikes2, v => v + " world!");
console.log(customArr2);
const customObjToArr = Array.from(customObj);		// []
console.log(customObjToArr);

customArr.filter(v => v === "hi");		// ["hi"]

</script>
</body>
</html>