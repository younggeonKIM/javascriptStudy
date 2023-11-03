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
var result_substring = sample.substring(0, 5); // 0번째 index부터 시작해 5번째 index 앞까지 해당하는 문자열 반환
var result_substr = sample.substr(6, 5); // 6번째 index부터 5글자만큼 반환.
document.write("<br>"+result_substring); // "Hello"
document.write("<br>"+result_substr);	 	// "World"


sample = "Hello/World";
var result_split = sample.split("/");
document.write("<br>"+result_split[0]);
document.write("<br>"+result_split[1]);

sample1 = "Hello";
sample2 ="World";
document.write("<br>"+sample1.concat(sample2));

sample = "     Hello World ";
sample2 ="hello world"
document.write("<br>"+sample+sample2);			// " Hello World hello world"
document.write("<br>"+sample.trim()+sample2); // "Hello Worldhello world"

sample = "hello";
document.write("<br>"+sample.length); // 5
</script>
</body>
</html>