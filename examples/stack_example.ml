(** Stack usage example - Balanced parentheses checker *)

open Data_structures

let is_balanced str =
  let rec check stack i =
    if i >= String.length str then
      Stack.is_empty stack
    else
      match str.[i] with
      | '(' -> check (Stack.push '(' stack) (i + 1)
      | ')' ->
        if Stack.is_empty stack then false
        else
          let (_, new_stack) = Stack.pop stack in
          check new_stack (i + 1)
      | _ -> check stack (i + 1)
  in
  check Stack.empty 0

let () =
  let test_cases = [
    "()";
    "(())";
    "((()))";
    "()()";
    "(()())";
    "(";
    ")";
    "())(";
    "(()"
  ] in
  
  print_endline "Balanced Parentheses Checker";
  print_endline "===========================";
  
  List.iter (fun s ->
    let result = if is_balanced s then "✓ Balanced" else "✗ Not balanced" in
    Printf.printf "%-10s -> %s\n" ("\"" ^ s ^ "\"") result
  ) test_cases
