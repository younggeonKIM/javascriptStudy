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
// 데이터 변환 방법
	const schools = [
		"Yorktown",
		"Washington",
		"Wakefield"
	];

	// Array.join(합치기) : 콤마(,) 로 각 학교를 구분한 문자열 얻기
	console.log(schools.join(","));	// "Yorktown", "Washington", "Wakefield"
	
	// Array.filter(걸러내기) : 'W'로 시작하는 학교만 있는 새 배열 만들기
	// 원소를 제거하는 경우, Array.pop, Array.slice 가 아닌 순수함수 filter를 사용할 것
	console.log(schools.filter(school => school[0] === "W"));		// ["Washington", "Wakefield"]
	
	// Array.map(맵핑) : 모든 원소에 'High School' 문자열 추가된 새 배열 만들기
	const highSchools = (schools.map(school => `\${school} High School`));
	console.log(highSchools.join("\n"));
	
	// Array.reduce(축약) : 배열에서 최대값 찾기 (배열을 하나의 수로 변환)
	const result = [21, 18, 42, 40, 64, 63, 24].reduce((max, num) => num > max ? num : max, 0);
	console.log(result);			// 64

// 합성 함수(Function composition)
	const sum = (a, b) => a+b
	const square = x => x * x
	const addTen = x => x + 10

	const computeNumbers = addTen(square(sum(3, 5)))		// 74

	// compose 는 함수를 연쇄적으로 호출하며 반환값을 전달.
	const compose = (...fns) => 
		fns.reduce((prevFn, nextFn) =>
			(...args) => nextFn(prevFn(...args)),
		);

	// compose의 사용
	const compute = compose(
			sum, 
			square,
			addTen
		)
	console.log(compute(3, 5));	// 74
	
</script>
</body>
</html>