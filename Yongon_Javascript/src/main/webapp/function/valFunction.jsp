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
/* 
function valueFunction() {}

var valueFunction = function() {}
 */
obj = {

		 valueFunction:function(){
		}
 };

// 함수는 값이므로 다른 함수의 인자로 전달 가능.
function calculate(func, num){

	return func(num);
} 
function increase(num){

	return num+1;
}
function decrease(num){

	return num-1;
}
alert(calculate(increase, 1));		// 결과: 2
alert(calculate(decrease, 1));	// 결과: 0


// 함수는 값이므로 다른 함수의 리턴값으로 사용 가능.
function calculate2(mode){

	var funcs = {

			'plus' : function(left, right) {return left+right }, 
			'minus' : function(left, right){return left-right}
	}
	return funcs[mode];
}
alert(calculate2('plus')(2, 1));			// 결과: 3
alert(calculate2('minus')(2, 1));		// 결과: 1


// 함수는 배열의 값으로도 사용 가능.
var process = [
	function(input) { return input + 10; },
	function(input) { return input * input; },
	function(input) { return input / 2; }
];
var input = 1;
for(let i = 0; i < process.length; i ++){

	input = process[i](input);
}
document.write(input);		// 60.5
 </script>
</body>
</html>