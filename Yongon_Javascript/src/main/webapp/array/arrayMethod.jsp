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
	
	
	res = arr.sort(funcsort);
	function funcsort(firstVal, secondVal){

		// return 값이 양수면 오름차순, 음수면 내림차순, 만약 배열 요소값이 6이면 항상 맨 뒤에 오게 정렬함.
		if(firstVal === 6){
			return 1;
		}
		if(secondVal === 6){
			return -1;
		}
		return secondVal-firstVal;
	}
	console.log("6을 맨 뒤로 오게 하는 sort() 함수 정렬 결과 : "+res);
}
// array.join()
	const fruits = ['apple', 'banana', 'orange'];
	let res;

	// 배열 모든 요소를 기본 구분자인 쉼표 [ , ] 로 나눈 하나의 문자열로 저장.
	res = fruits.join();
	console.log(res);
	// 'apple,banna,orange'

	// 배열 모든 요소를 join 파라미터 내의 지정된 구분자로 나눈 하나의 문자열로 저장. 
	res2 = fruits.join(' ');
	console.log(res);
	//'apple banana orange'

	
// array.split()
	// 하나의 문자열을 split 파라미터 내의 지정된 구분자로 나누어 배열 각 요소로 저장.
	const array1 = res.split(',');
	console.log("split(',') 한 결과 값은 : "+array1);


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
	console.log("array4를 slice한 값은 : "+array4);
	
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

	// find() 는 첫 번째 결과값만을 반환하며, 첫 번째 결과값 찾으면 그 즉시 종료.
	const res6 = students.find((student) => student.score === 90);
	console.log(res6);
	// Student { name: "C", age: 30, enrolled: true, score: 90}
	
// array.filter()
	// filter() 함수는 조건 부합하는 결과값들을 배열에 저장하며 배열을 반환함.
	const res7 = students.filter((student) => student.enrolled);
	console.log(res7);
	// (3) [Student, Student, Student]
	// 0 : Student {name: "A", age: 29, enrolled: true, score: 45}
	// 1 : Student {name: "C", age: 30, enrolled: true, score: 90}
	// 2 : Student {name: "E", age: 18, enrolled: true, score: 88}
	
// array.map()
	const res8 = students.map((student) => student.score);
	console.log(res8);
	// [45, 80, 90, 66, 88]
	
// array.some()	/	array.every()
	const res9 = students.some((student) => student.score >= 50);
	console.log(res9);
	// true

	const res10 = students.every((student) => student >= 50);
	console.log(res10);
	// false
	
// array.reduce()		/ 	array.reduceRight()
	const res11 = students.reduce((prev, curr) => {
		// prev는 이전 콜백함수의 리턴값이 저장됨.
		// curr는 배열 아이템을 순차적으로 전달받음.
		return prev + curr.score;
		}, 0);
	console.log( res11 / students.length);

	const res12 = students.reduce((prev, curr) => prev + curr.score, 0);
	console.log( res12 / students.length);
	
</script>
</body>
</html>