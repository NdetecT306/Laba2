import * as fs from 'fs';
const input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
let numbers = +input[0];
if (numbers <= 0) {
    console.log("Быть не может");
    process.exit(0);
}
let clumba: number[] = [];
let max = 0;
for (let i = 1; i <= numbers; ++i) {
    let flower = +input[i];
    if (flower > 0) {
        clumba.push(flower);
    }
    if (flower > max) {
        max = flower;
    }
}
let poliv = +input[numbers + 1];
if (poliv < max) {
    console.log("Как купишь новую лейку - приходи.");
    process.exit(0);
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
