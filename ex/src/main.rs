

fn process_file(file_data: &str) -> String {
    // Simulate file processing
    format!("Processed data: {}", file_data)
}

fn main() {
    let file_data = "example data";
    let result = process_file(file_data);
    println!("{}", result);
}
