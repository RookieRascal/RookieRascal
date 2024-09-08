let check_access user file =
  match user.role with
  | "admin" -> true
  | "user" when file.owner = user -> true
  | _ -> false

let main () =
  let user = { role = "admin"; name = "Alice" } in
  let file = { owner = "Bob"; name = "example.txt" } in
  let access = check_access user file in
  Printf.printf "Access allowed: %b\n" access

let () = main ()
