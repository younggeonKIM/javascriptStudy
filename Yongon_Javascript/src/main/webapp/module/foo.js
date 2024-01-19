import getAge, { firstName, lastName } from './bar.js';

console.log(`foo.js lastName: ${lastName}`);
console.log(`foo.js firstName: \${firstName}`);
console.log(`foo.js age: \${getAge()}`);