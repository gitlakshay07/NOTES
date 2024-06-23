//@ts-ignore

// number for arethmetic operations 

function sum(a:number, b:number):number{
    return a + b;
}
console.log(sum(5,9));

// string for writing perameters 

let hello: string = 'Hello World';

// boolean for true /false

function isEven(a:number): boolean {
    return a % 2 === 0;
}
console.log(isEven(10));

//Any => dealing with dynamic daata 

// unknown => during condition 

let num2: unknown;
num2 = "false"
num2 = 5;
if(typeof num2 === "number") {
    console.log(num2 + 5);
}else if (typeof num2 === "boolean") {
    console.log(num2);
}

// optional parameter

function greet(name:string, id?:number):string {
    return `welcome, ${name} and your id is ${id}`
}
// console.log(greet('lucky'));

// define perameter

function greets(name:string, id:number = 1):string {
    return `welcome, ${name} and your id is ${id}`
}
console.log(greets('lakshay'));

//defing arrays 

const numb:number[] = [1,2,3,4,5,6];
const num4:number[] = new Array(1,3,4,6,7)
const names:string[] = Array.of("yello","orange","pink")
// console.log(names[2]);
// console.log(numb.length);

// object => in ts TYPE ALIES  call signature

type Person1 = {
    name:string;
    age:number;
    isStudent:boolean;
    class?:string;//optional perameter
    greet: (country:string) => string
}

const p1:Person1 = {
    name:'laskhay',
    age:26,
    isStudent:true,
    greet: (india) =>`welcome ${p1.name}, age is ${p1.age}`
}

// console.log(p1.greet('india'));

// Enums in objects => ek property ka 2 roles hota hai then
enum Roles {
    user = "user",
    admin = "admin"
}
type loginDetails = {
    name?:string;
    email:string;
    password:string;
    role:Roles
}

const user1:loginDetails = {
    email : "lakshay@gmail.com",
    password : "qweer",
    role:Roles.admin
}
// console.log(user1);

// TUPLES in Array 

type PersonInfo = readonly [string, number, boolean]; // cant push pop etc in arr.

const Person1:PersonInfo = ['lakshay', 20, false]

// console.log(Person1);

// UNion in TS 

const userInput = (value:string|number|boolean) => {
    console.log(value);
};
// userInput(true);

// inersection in TS

type Person2 = {
    name:string,
    age:number
}
type employy = {
    emp_id: number,
    department:string
}
type employyDetails = Person2 | employy

const intro:employyDetails = {
    name : 'lakshay',
    age : 22,
    department : "IT",
}
// console.log(intro);

//Generics in TS => gives power to work with multiple daata types\
function logAndReturn<T>(value:T):T {
    return value;
}

const numbe4 = logAndReturn<number>(42)
// console.log(numbe4);
const val4 = logAndReturn<string>('hello')
// console.log(val4);

// multiple type variables

function add<T,U>(a:T,b:U){
   console.log(a);
   console.log(b);
}
add<number, string>(5,'added')

// INTERFACE in ts => it gives the shape of an object 

interface Greeting {
    name: string,
    surname?:string,
    age:number
}
const Greets:Greeting = {
    name: 'lakshay',
    surname:'vimall',
    age:25
}
console.log(Greets);

//OOPS in ts 
//NOTE => PUBLIC can use in parent / child / outside class 
//Protected => can use in parent / child class only 
//PRivate => can use only in Parent class

// if we write this inside constructor no need name &this.name up down
class Persona { 
    public name:string;
    age: number;
    hobbies:string[];

    constructor(name:string, age:number, hobbies:string[]) {
        this.name = name;
        this.age = age;
        this.hobbies = hobbies
    }

    introduce():string {
        return `hi ${this.name} iam ${this.age} yr old & love ${this.hobbies}`
    }
}
const pers1:Persona = new Persona("lakshh",22,["reaading", "Learning"])
// console.log(pers1);

// Inheritance in Class in TS 
console.log(pers1.introduce());

class Student extends Persona {
    grade: number;
    constructor(name:string, age:number, hobbies : string[], grade:number) {
        super(name,age,hobbies)
        this.grade = grade;
    }
    introduce(): string {
        return `here ${super.introduce()}, got ${this.grade}`
    }
}

const Student1:Persona = new Student('shmap',12,["netflix","sleep"],99)
console.log(Student1.introduce());

