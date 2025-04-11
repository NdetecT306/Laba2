use std::io;
fn main() {
    let mystring = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    loop {
        let mut numbers = String::new();
        io::stdin().read_line(&mut numbers).unwrap();
        let number: i32 = match numbers.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Неправильный ввод. Попробуйте снова: ");
                continue; 
            }
        };
        if number <= 0 || number > 26 {
            println!("Неправильное число. Попробуйте снова: ");
            continue; 
        }
        let mut point = number - 1;
        println!("Результат: ");
        while point >= 0 {
            for i in (point..number).rev() {
                print!("{}", mystring.chars().nth(i as usize).unwrap());
                print!(" ");
            }
            println!();
            point -= 1;
        }
        break; 
    }
}
