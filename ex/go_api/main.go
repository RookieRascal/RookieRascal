package main

import (
    "fmt"
    "net/http"
    "os/exec"
    "log"
)

func uploadHandler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "File uploaded! Processing...")

    // Call Rust or Zig to process the file (example via a command or API call)
    cmd := exec.Command("./rust_processing/process_file") // Example of calling Rust
    output, err := cmd.Output()
    if err != nil {
        log.Fatal(err)
    }
    fmt.Fprintf(w, "Processing result: %s", output)
}

func main() {
    http.HandleFunc("/upload", uploadHandler)
    log.Fatal(http.ListenAndServe(":8080", nil))
}
