const input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
const myString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
let count = 0;
let number;
while (true) {
    number = parseInt(input[count++]);
    if (isNaN(number) || number <= 0 || number > 26) {
        console.log("Неправильное число.");
        // Попросить пользователя ввести снова. 
    } else {
        let point = number - 1;
        console.log("Результат:");
        while (point >= 0) {
            for (let i = number - 1; i >= point; i--) {
                process.stdout.write(myString[i] + " ");
            }
            point--;
            console.log();
        }
        break; 
    }
}
