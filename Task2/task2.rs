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
        println!("Быть не может");
        return;
    }
    let mut max = 0;
    let mut clumba = Vec::new();
    for _i in 0..number{
        let mut flow = String::new();
        io::stdin().read_line(&mut flow).unwrap();
        let flower: i32 = match flow.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Неправильный ввод.");
                continue;
            }
        };
        if flower > 0{
            clumba.push(flower); 
        }
        if flower > max{
            max = flower;
        }
    }
    let mut leika = String::new();
    io::stdin().read_line(&mut leika).unwrap();
    let poliv: i32 = match leika.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Неправильный ввод.");
            return;
        }
    };
    if poliv < max {
        println!("Как купишь новую лейку - приходи.");
        return;
    }
    let mut step = 0;
    let mut perem = poliv;
    for i in 0..clumba.len(){
        if perem < clumba[i]
        {
            step = step + (i * 2 + 1);
            perem = poliv;
        }
        else
        {
            step += 1;
        }
        perem -= clumba[i];
    }
    println!("{}", step);
}
