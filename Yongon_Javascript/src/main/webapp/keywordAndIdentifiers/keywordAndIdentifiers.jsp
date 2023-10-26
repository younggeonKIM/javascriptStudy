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
// 예약어(식별자(identifier)의 이름으로 쓰일 수 없음)
/* await, break, case, catch, const, continue, debugger, default,
delete, do, else, enum, export, extends, false, finally, for, 
function, if, implements, in, instanceof, interface, let, new,
null, package, private, protected, public, return, super, switch,
static, this, throw, try, true, typeof, var, void, while, witch, yeild
 */

 // 식별자는 반드시 문자, 언더스코어(underscore, _), 달러 표시(dollar sign, $)으로 시작해야.
var a = 'hello';
var _a = 'hello';
var  $a ='hello';

/* 식별자의 이름은 숫자로 시작할 수 없음. */
var 1a ='hello';
 console.log(1a);
 // 식별자는 대소문자를 구분함.
var y='hi';
var Y='hi';
 console.log(y);
 console.log(Y);
// 예약어는 식별자의 이름이 될 수 없다.
var new = 5;
console.log(a);
console.log(_a);
console.log($a);

</script>
</body>
</html>