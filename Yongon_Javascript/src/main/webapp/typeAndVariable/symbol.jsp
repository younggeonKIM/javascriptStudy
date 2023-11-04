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
// Create symbols
const sym1 = Symbol();
const sym2 = Symbol('foo');
const sym3 = Symbol('bar');

// Print symbols (use the description that was specified when calling Symbol function)
console.log(sym1);		// Symbol()
console.log(sym2);		// Symbol(foo)
console.log(sym3);		// Symbol(bar)

// Check type of symbol
console.log(typeof sym1);	// symbol
console.log(typeof sym2); 	// symbol
console.log(typeof sym3);	// symbol

const sym4 = Symbol();
const sym5 = Symbol();
const sym6 = Symbol('foo');
const sym7 = Symbol('foo');
console.log(sym4 === sym4);		// true
console.log(sym4 === sym5);		// false
console.log(sym6 === sym7);		// false

/* const sym = new Symbol();	 */		// Uncaught TypeError : Symbol is not a constructor

const obj = {};
obj.propertyKey1 = 'propertyValue1';
obj['propertyKey2'] = 'propertyValue2';
obj[3] = 'propertyValue3';	// obj['3'] = 'propertyValue3' 으로 변환
console.log(obj);		// {propertyKey1 : 'propertyValue1', propertyKey2 : 'propertyValue2', 3 : 'propertyValue3'}

const obj2 = {};
const sym10 = Symbol();
const sym11 = Symbol('foo');
const sym12 = Symbol('foo');
obj2[sym10] = 'propertyValue1';
obj2[sym11] = 'propertyValue2';
obj2[sym12] ='propertyValue3';	// no conflict with sym2
console.log(obj2);	// {Symbol(): 'propertyValue1', Symbol(foo) : 'propertyValue2', Symbol(foo) : 'propertyValue3'	}
console.log(obj2[sym10]);	// propertyValue1
console.log(obj2[sym11]); // propertyValue2
console.log(obj2[sym12]); // propertyValue3

const sym13 = Symbol.for('symbolkey1');	// Create symbol
const sym14 = Symbol.for('symbolkey1');	// Reuse symbol
console.log(sym13===sym14);		// true

const unsharedSym = Symbol('symbolkey2');
const symKey1 = Symbol.keyFor(unsharedSym);
console.log(symKey1);		// undefined

const sharedSym = Symbol.for('symbolkey2');
const symKey2 = Symbol.keyFor(sharedSym);
console.log(symKey2); 		// symbolkey2

const obj3 = {};
obj3[Symbol('a')] = 'a';
obj3[Symbol.for('b')] = 'b';
obj3['c'] = 'c';
obj3.d = 'd';
for(const propertyKey in obj3){

	console.log(propertyKey);		// logs 'c' and 'd'
}

const sym15 = Symbol('foo');
const obj4 ={

		[sym15] : 'propertyValue1',
		propertyKey2 : 'propertyValue2'
};
console.log(JSON.stringify(obj4));		// {"propertyKey2" : "propertyValue2"}

</script>
</body>
</html>