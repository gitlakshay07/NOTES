"use strict";
//@ts-ignore
// number for arethmetic operations 
function sum(a, b) {
    return a + b;
}
console.log(sum(5, 9));
// string for writing perameters 
let hello = 'Hello World';
// boolean for true /false
function isEven(a) {
    return a % 2 === 0;
}
console.log(isEven(10));
//Any => dealing with dynamic daata 
// unknown => during condition 
let num2;
num2 = "false";
num2 = 5;
if (typeof num2 === "number") {
    console.log(num2 + 5);
}
else if (typeof num2 === "boolean") {
    console.log(num2);
}
// optional parameter
function greet(name, id) {
    return `welcome, ${name} and your id is ${id}`;
}
// console.log(greet('lucky'));
// define perameter
function greets(name, id = 1) {
    return `welcome, ${name} and your id is ${id}`;
}
console.log(greets('lakshay'));
//defing arrays 
const numb = [1, 2, 3, 4, 5, 6];
const num4 = new Array(1, 3, 4, 6, 7);
const names = Array.of("yello", "orange", "pink");
const p1 = {
    name: 'laskhay',
    age: 26,
    isStudent: true,
    greet: (india) => `welcome ${p1.name}, age is ${p1.age}`
};
// console.log(p1.greet('india'));
// Enums in objects => ek property ka 2 roles hota hai then
var Roles;
(function (Roles) {
    Roles["user"] = "user";
    Roles["admin"] = "admin";
})(Roles || (Roles = {}));
const user1 = {
    email: "lakshay@gmail.com",
    password: "qweer",
    role: Roles.admin
};
const Person1 = ['lakshay', 20, false];
// console.log(Person1);
// UNion in TS 
const userInput = (value) => {
    console.log(value);
};
const intro = {
    name: 'lakshay',
    age: 22,
    department: "IT",
};
// console.log(intro);
//Generics in TS => gives power to work with multiple daata types\
function logAndReturn(value) {
    return value;
}
const numbe4 = logAndReturn(42);
// console.log(numbe4);
const val4 = logAndReturn('hello');
// console.log(val4);
// multiple type variables
function add(a, b) {
    console.log(a);
    console.log(b);
}
add(5, 'added');
const Greets = {
    name: 'lakshay',
    surname: 'vimall',
    age: 25
};
console.log(Greets);
//OOPS in ts 
//NOTE => PUBLIC can use in parent / child / outside class 
//Protected => can use in parent / child class only 
//PRivate => can use only in Parent class
// if we write this inside constructor no need name &this.name up down
class Persona {
    name;
    age;
    hobbies;
    constructor(name, age, hobbies) {
        this.name = name;
        this.age = age;
        this.hobbies = hobbies;
    }
    introduce() {
        return `hi ${this.name} iam ${this.age} yr old & love ${this.hobbies}`;
    }
}
const pers1 = new Persona("lakshh", 22, ["reaading", "Learning"]);
// console.log(pers1);
// Inheritance in Class in TS 
console.log(pers1.introduce());
class Student extends Persona {
    grade;
    constructor(name, age, hobbies, grade) {
        super(name, age, hobbies);
        this.grade = grade;
    }
    introduce() {
        return `here ${super.introduce()}, got ${this.grade}`;
    }
}
const Student1 = new Student('shmap', 12, ["netflix", "sleep"], 99);
console.log(Student1.introduce());
