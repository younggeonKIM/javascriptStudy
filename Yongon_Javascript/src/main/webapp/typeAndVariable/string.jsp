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
var sample1 = new String("Sample1"); // 첫 번째 방식
var sample2 = "Sample2"; 					 // 두 번째 방식
document.write(sample1);
document.write("<br>");
document.write(sample2);

var sample = "Hello";
var result = sample.charAt(1);
document.write("<br>"+result);

sample = "Hello World! LKT PROGRAMMER World";
var result_indexOf = sample.indexOf("World");
var result_lastIndexOf= sample.lastIndexOf("World");
document.write("<br>"+result_indexOf);		 // 6
document.write("<br>"+result_lastIndexOf); // 28

sample = "Hello World!";
var result_replace = sample.replace("Hello", "Hi");
document.write("<br>"+result_replace); 		// "Hi World!"

sample ="Hello World! Hello";
result_replace =sample.replace("Hello", "Hi");
document.write("<br>"+result_replace); 		// "Hi World! Hello" (최초로 일치하는 문자만 치환됨)

sample = "Hello World";
let result_substring = sample.substring(0, 5); // 0번째 index부터 시작해 5번째 index 앞까지 해당하는 문자열 반환
let result_substr = sample.substr(6, 5); // 6번째 index부터 5글자만큼 반환.
document.write("<br>"+result_substring); // "Hello"
document.write("<br>"+result_substr);	 	// "World"
let negativeResult_substr = sample.substr(-3, 4); 
document.write("<br>"+negativeResult_substr);	 	// "rld"
let slicedResult = sample.slice(3);
document.write("<br>"+slicedResult);	 	// "lo World"

sample = "Hello/World";
// string의 split() 함수를 써서 구분자인 [ / ] (슬래시) 로 나눈 문자열들을 배열의 요소로서 각각 저장함.
var result_split = sample.split("/");
document.write("<br>"+result_split[0]);
document.write("<br>"+result_split[1]);
// 만약 문자열 내에 존재하지 않는 구분자 ex) [ * ] (asterisk) 로 split() 함수를 실행할 경우, 해당 전체 문자열이 배열 내에 단일 요소로서 저장되게 됨.
let noDeliSplit = sample.split("*");
document.write("<br>"+noDeliSplit[0]);



sample1 = "Hello";
sample2 ="World";
document.write("<br>"+sample1.concat(sample2));

sample = "     Hello World     ";
sample2 ="hello world"
// HTML 상에서 연속된 공백 및 줄바꿈 유지시키는 [ "white-space: pre;" ] 속성 사용.
document.write("<br><div style=\"white-space: pre;\">"+sample+sample2+"</div>");			// "     Hello World     hello world"
document.write("<br><div style=\"white-space: pre;\">"+sample.trim()+sample2+"</div>"); // "Hello Worldhello world"
document.write("<br><div style=\"white-space: pre;\">"+sample.trimStart()+sample2+"</div>"); // "Hello World     hello world"
document.write("<br><div style=\"white-space: pre;\">"+sample.trimEnd()+sample2+"</div>"); // "     Hello Worldhello world"


sample = "hello";
document.write("<br>"+sample.length); // 5

document.write("<br>"+"hello 문자열에 's' 문자가 포함돼 있는가? "+sample.includes('s'));
document.write("<br>"+"hello 문자열이 'h' 문자로 시작되는가? "+sample.startsWith('h'));
document.write("<br>"+"hello 문자열이 'o' 문자로 끝나는가? "+sample.endsWith('o'));

document.write("<br>"+"hello 문자열 앞에서부터 10자리를 채우기 : "+sample.padStart(10, '*'));
document.write("<br>"+"hello 문자열 뒤에서부터 10자리를 채우기 : "+sample.padEnd(10, '*'));

// ES6부터 도입된 template literal
let a = `안녕하세요.
김영건입니다.
잘부탁드립니다.
자동 줄바꾸기입니다.
`;
// <pre> 태그를 써서 텍스트 공백 및 줄바꿈을 유지해줌.
document.write("<br><pre>"+a+"</pre>");

// css의 [ pre-line ] 속성을 적용해서 HTML 상에서 바꿀 수도 있음.
// "white-space : pre-line" 은 공백은 압축시키며, 개행문자 [ \n ] 는 개행으로 처리해줌.
document.write("<br><div style=\"white-space: pre-line;\">"+a+"</div>");

// 정규표현식과 replace() 함수로 개행문자를 g(전역 검색) 방식으로 하나하나 찾아서 HTML이 인식하는 [ <br> ] 태그로 바꿔주기.
// 만약 정규표현이 어려우면 [ replaceAll() ] 함수로 문자열 전역에 있는 개행문자를 검색해 전부 바꿔주는 방법도 있음.
document.write("<br>"+a.replace(/\n/g, '<br>'));
document.write("<br>"+a.replaceAll("\n", '<br>'));

const obj = {
		person : [ "영건", "효경", "시은", "영민", "강민", "성무", "정인", "진솔", "인용"],
		computer : "XP",
		age : 10
};

// javascript 템플릿 리터럴과 JSP EL 표현식 문법을 헷갈리지 않게 하기 위해 [ $ ] 달러 기호 앞에 [ \ ] (백슬래시) 를 붙여 이스케이프 시켜줌.
// javascript 템플릿 리터럴 기호 [ ` ] (backtick) 내에서는 HTML에 표시하기 위한 [ "" ] (큰따옴표) 와 [ + ] (덧셈) 기호를 넣어줄 필요가 없음.
document.write(`<br>\${ obj.person[1] }이라는 사람은 \${ obj.computer } 컴퓨터를 가지고 있으며, 나이는 \${ obj.age }입니다.`);
</script>
</body>
</html>