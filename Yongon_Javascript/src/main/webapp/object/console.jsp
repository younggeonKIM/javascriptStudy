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
console.log("안녕.");
console.error("안녕.");
console.debug("안녕.");

// 2차원 배열을 브라우저 상에서 표 형식으로 보여줌. 
console.table([ [1, 2, 3, 4], ["안녕.", "고마워.", "사랑해.", "행복하게 살자."]]);

// 객체의 배열을 표 형식으로 보여주는 것도 가능.
console.table([ { id : 'young3702', name : '영건', age : 30 }, { id : 'penguin3702', name : '영우', age : 29 } ]);

console.count();
console.count();
console.count('똥싼 횟수');
console.count('똥싼 횟수');
console.count('똥싼 횟수');
console.count('똥싼 횟수');
console.countReset('똥싼 횟수');
console.count('똥싼 횟수');
console.count('똥싼 횟수');

// 타이머 시작
console.time();
for(let i=0 ; i < 150000 ; i++){}	// 반복문 블록 처리 없음.
// 경과 타임 기록 (종료하는 것이 아님에 주의)
console.timeLog();						//  0.81494140625 ms

for(let i=0 ; i < 150000 ; i++){}	// 반복문 블록 처리 없음.
// 경과 타임 기록 (종료하는 것이 아님에 주의)
console.timeLog();						//  1.630859375 ms
// 타이머 종료
console.timeEnd();						// 1.679931640625 ms

/*
for(let i=0 ; i < 150000 ; i++){}	// 반복문 블록 처리 없음.
// 타이머를 종료하고 타임 기록을 해서 에러 발생.
console.timeLog();						//  Timer 'default' does not exist
*/
function foo() {
	console.trace();
}
foo();
</script>
</body>
</html>