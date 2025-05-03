use std::io;

pub fn main() {
    let _res = first_app::add(12, 2147481647);
    let _result: i32 = first_app::add(2223, 89989);

    println!("Result: {}", _result);
    println!("Press Enter to exit...");

    // Wait for the user to press Enter.
    let mut input = String::new();

    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line");
}
