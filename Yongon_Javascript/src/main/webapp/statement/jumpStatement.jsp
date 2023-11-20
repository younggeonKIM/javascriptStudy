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
// 일반적 사용법
for (let i=0 ; i < a.length ; i++){

	if (a[i] === target) break;
}

//  labelname 사용법 : labelname이 붙여진 블록을 빠져나옴.
let matrix = getData();	// 숫자로 구성된 2차원 배열을 만듬.
let sum = 0, success = false;
computeSum: if(matrix) { // 에러가 발생했을 때 빠져나갈 수 있도록 라벨 등록.

	for (let x = 0; x < matrix.length ; x++){

		let row = matrix[x];
		if(! row) break computeSum;
		for (let y =0 ; y < row.length ; y++){

			let cell = row[y];
			if(isNaN(cell)) break computeSum;
			sum += cell;
		}
	}
}

{
// continue
for(let i = 0 ; i < data.length; i ++){

	if(!data[i]) continue;		// 정의되지 않은 데이터는 continue 아래의 코드들을 실행하지 않음.
	total += data[i];
}
}


// return
{
	function square(x) {return x*x;}		// return 문이 있는 함수
	result = square(2);		// 실행 result에 4의 값을 리턴함.

	// return 문을 expression없이 사용해도 호출자에게 undefined를 반환.
	function displayObject(obj) {

		// 인자가 null 이나 undefined이면 즉시 종료
		if (! obj) return;
		// 함수의 나머지 부분

		}
	result = displayObject();
}

// throw
{
function factorial(x) {

	// 인자가 유효하지 않으면 예외를 발생.
	if(x < 0 ) throw new Error("x must not be negative");
	// 그렇지 않다면 정상적 작동.
	let f;
	for ( f = 1; x > 1; f*=x, x--) /* 의도적으로 비움 */;
	return f;
}
factorial (4);
}


// with
{
// 예시1
document.form[0].address.value
// 위 코드를 아래와 같이 공통된 부분을 with로 묶으면서
// 코드를 간결하게 하고 중복을 줄임.
with(document.form[0]){

	// 폼 요소에 직접 접근
	name.value = "";
	address.value="";
	email.value="";
}

	}
</script>
</body>
</html>