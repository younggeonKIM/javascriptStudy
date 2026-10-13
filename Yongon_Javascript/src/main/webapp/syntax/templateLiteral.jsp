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
const name = '영건';
//하지만, 밑에 변수명과 문자열을 병합하여 출력하는 방법은 변수가 많아지면 읽는 데에 직관적으로 어렵고, 
//특히 [ + ] (플러스) 기호와 [ '' ] (작은따옴표), [ "" ] (큰따옴표) 등이 점철돼 복잡한 코드가 돼버림.
console.log(name + '입니다.');			// 영건입니다.



// 템플릿 리터럴을 사용하면 [ + ] (플러스) 기호와 [ '' ], [ "" ] (작은따옴표, 큰따옴표) 등을 사용할 필요없이 직관적으로 문자열과 변수값을 병합해 출력 가능.
// JSP의 EL 표현식 문법과 헷갈리지 않도록 [ $ ] (달러) 기호 앞에 [ \ ] (백슬래시) 기호를 붙여 escape 시킴.
console.log(`\${name}입니다.`);		// 영건입니다.

// 만약 이 변수 값 출력 시에 산술계산 결과도 포함하고 싶으면 템플릿 리터럴 기호 내에서 계산식을 작성하면 해당 계산식을 평가하여 출력할 것임.
console.log(`\${ 15 * 84 }번 \${name} 손님`);			// 1260번 영건 손님
</script>
</body>
</html>