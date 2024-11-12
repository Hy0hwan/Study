/** 원시형 데이터 타입 */

/** 문자열, String */
const str1 = 'Hello, World!';
const str2 = 'World!';
const str3 = `Hello, ${str2}`;

console.log(str1, str2, str3);

/** 숫자, Number
 * 숫자 데이터와 다른 타입의 값을 연산할 경우 -> 2-1 가기
 */

const num1 = 123;
const num2 = -123;
const num3 = -123.5678;
const pi = 3.141592;

console.log(num3 + undefined); // 2.1 : 출력 값이 NaN
console.log(typeof (num3 + undefined));
console.log(typeof pi);

/** null과 undefined
 * null : 존재하지 않는다. 값이 비어있다. 값을 알 수 없다. 명시적으로 표현한 것이다
 * 의도적으로 변수를 비우거나, 특정 상황에서 값이 없음을 나타내기 위해 사용된다.
 *
 *
 * undefined : 변수가 선언되었지만, 값이 할당되지 않았음을 의미합니다.
 * 함수가 값을 반환하지 않거나, 객체에서 존재하지 않는 속성에 접근했을 때도 undefined를 반환합니다.
 */

let value1 = null; // 개발자의 의도가 보인다./있다 라는 코드
console.log(value1);

/** 비동기 함수  */
setTimeout(() => {
  value1 = 30;
  console.log(value1);
}, 1000);

let value2;
console.log(value2); // undefined

/** Boolean(불린)
 * true와 false라는 두 가지의 값만 사용하는 논리 데이터
 * true: 긍정의 의미를 가지고 있다.
 * false: 부정의 의미를 가지고 있다.
 */

const truthy = true;
const falsy = false;

if (truthy) {
  console.log('참 입니다.');
} else {
  console.log('거짓 입니다.');
}

/** ---------------------------------------------------------------------------------------------------- */

const user = {
  name: 'HyoHwan',
  age: 29,
};

console.log(user);
console.log(user.name);
console.log(user.age);
console.log(user.email); // undefined
