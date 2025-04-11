const input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
let count = 0;
let numbers = Number(input[count++]);
let max = 0;

if (numbers <= 0) {
    console.log("Быть не может");
    process.exit();
}
let clumba = [];
for (let i = 0; i < numbers; ++i) {
    let flower = Number(input[count++]);
    if (flower > 0) {
        clumba.push(flower);
    }
    if (flower > max) {
        max = flower;
    }
}
let poliv = Number(input[count++]);
if (poliv < max) {
    console.log("Как купишь новую лейку - приходи.");
    process.exit();
}
let step = 0;
let perem = poliv;
for (let i = 0; i < clumba.length; i++) {
    if (perem < clumba[i]) {
        step += (i * 2 + 1);
        perem = poliv;
    } else {
        step += 1;
    }
    perem -= clumba[i];
}
console.log(step);
