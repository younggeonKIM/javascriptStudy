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

// array.sort()
{
const arr = [5, 3, 2, 4, 6, 1];
let res;
res = arr.sort();		// sort((a, b) => a - b) 와 동일
console.log(res);
// [1, 2, 3, 4, 5, 6]

res = arr.sort((a, b) => b - a);
console.log(res);
// [6, 5, 4, 3, 2, 1]
}

// array.join()
	const fruits = ['apple', 'banana', 'orange'];
	let res;

	res = fruits.join();
	console.log(res);
	// 'apple,banna,orange'

	res2 = fruits.join(' ');
	console.log(res);
	//'apple banana orange'

	
// array.split()
	const array1 = res.split(',');
	console.log(array1);


// array.reverse()
	const array2 = [1, 2, 3, 4, 5];
	const res3 = array2.reverse();

	console.log(res3);
	// [5, 4, 3, 2, 1]
	
	console.log(array2);		// 원래 배열도 변경이 돼있음.
	// [5, 4, 3, 2, 1]

// array.splice()
	const array3 = [1, 2, 3, 4, 5];
	let res4 = array3.splice(1, 3);

	console.log(res4);
	// [2, 3, 4]
	
	console.log(array3);
	// [1, 5]
	
// array.slice()
	const array4 = [1, 2, 3, 4, 5];
	let res5;

	res5 = array4.slice(2);	// 2부터 쭉
	console.log(res5);
	// [3, 4, 5]
	
	res5 = array4.slice(1, 3);
	console.log(res5);
	// [2, 3]

	
// array.find()
class Student {
		constructor(name, age, enrolled, score) {
			this.name =name;
			this.age = age;
			this.enrolled = enrolled;
			this.score = score;
		}
}
const students = [
	new Student('A', 29, true, 45),
	new Student('B', 28, false, 80),
	new Student('C', 30, true, 90),
	new Student('D', 40, false, 66),
	new Student('E', 18, true, 88),
];

	const res6 = students.find((student) => student.score === 90);
	console.log(res6);
	// Student { name: "C", age: 30, enrolled: true, score: 90}
</script>
</body>
</html>