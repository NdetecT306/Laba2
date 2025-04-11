function main() {
    const input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
    let numbers = parseInt(input[0]);
    let count = 0;
    let index = 1;
    while (numbers > 0) {
        const perem = parseInt(input[index++]);
        let temp = perem;
        while (temp > 0) { 
            const ost = temp % 10; 
            if (ost % 3 === 0 && ost !== 0) { 
                count += ost; 
            }
            temp = Math.floor(temp / 10); 
        }
        numbers--;
    }
    console.log(count);
}
main();
