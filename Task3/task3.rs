use std::io;
fn main() {
    let mut numbers = String::new();
    io::stdin().read_line(&mut numbers).unwrap();
    let number: i32 = match numbers.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Неправильный ввод.");
            return;
        }
    };
    if number <= 0 {
        println!("Неправильное число.");
        return;
    }
    let mut count = 0;
    for _ in 0..number { 
        let mut peremen = String::new();
        io::stdin().read_line(&mut peremen).unwrap();
        let mut perem: i32 = match peremen.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Неправильный ввод.");
                return;
            }
        };
        if perem < 0 {
            perem = -perem;
        }
        while perem != 0 {
            let ost = perem % 10;
            if ost % 3 == 0 {
                count += ost;
            }
            perem /= 10;
        }
    }
    println!("Результат = {}", count);
}
