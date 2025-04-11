const input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
let number;
while (true) {
    const userInput = input.length > 0 ? input.shift() : ''; 
    number = parseInt(userInput);
    if (!isNaN(number) && number > 0 && number <= 26) {
        break; 
    } else {
        console.log("Неправильное число. Попробуйте снова:");
    }
}
const myString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
let point = number - 1;
console.log("Результат:");
while (point >= 0) {
    let line = "";
    for (let i = number - 1; i >= point; i--) {
        line += myString[i] + " ";
    }
    console.log(line.trim());
    point--;
}
