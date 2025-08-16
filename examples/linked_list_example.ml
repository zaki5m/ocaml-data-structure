open Data_structures.Linked_list

let () =
  Printf.printf "=== Linked List Examples ===\n\n";

  (* Basic operations *)
  Printf.printf "1. Creating and basic operations:\n";
  let lst1 = of_list [1; 2; 3; 4; 5] in
  Printf.printf "Created list from [1;2;3;4;5]\n";
  Printf.printf "Length: %d\n" (length lst1);
  Printf.printf "Head: %s\n" (match head lst1 with Some x -> string_of_int x | None -> "None");
  Printf.printf "Is empty: %b\n" (is_empty lst1);
  
  (* Convert back to list *)
  let ocaml_list = to_list lst1 in
  Printf.printf "Back to OCaml list: [%s]\n" 
    (String.concat "; " (List.map string_of_int ocaml_list));
  
  Printf.printf "\n2. Map and filter operations:\n";
  let lst2 = map (fun x -> x * 2) lst1 in
  Printf.printf "Doubled: [%s]\n" 
    (String.concat "; " (List.map string_of_int (to_list lst2)));
  
  let lst3 = filter (fun x -> x mod 2 = 0) lst1 in
  Printf.printf "Even numbers: [%s]\n" 
    (String.concat "; " (List.map string_of_int (to_list lst3)));
  
  Printf.printf "\n3. Fold operations:\n";
  let sum = fold_left (+) 0 lst1 in
  Printf.printf "Sum: %d\n" sum;
  
  let product = fold_right ( * ) lst1 1 in
  Printf.printf "Product: %d\n" product;
  
  Printf.printf "\n4. Search operations:\n";
  let found = find (fun x -> x > 3) lst1 in
  Printf.printf "First element > 3: %s\n" 
    (match found with Some x -> string_of_int x | None -> "None");
  
  Printf.printf "Exists element > 10: %b\n" (exists (fun x -> x > 10) lst1);
  Printf.printf "All elements > 0: %b\n" (for_all (fun x -> x > 0) lst1);
  
  Printf.printf "\n5. List manipulation:\n";
  let lst4 = prepend 0 lst1 in
  Printf.printf "Prepended 0: [%s]\n" 
    (String.concat "; " (List.map string_of_int (to_list lst4)));
  
  let lst5 = of_list [6; 7; 8] in
  let lst6 = append lst1 lst5 in
  Printf.printf "Appended [6;7;8]: [%s]\n" 
    (String.concat "; " (List.map string_of_int (to_list lst6)));
  
  let lst7 = reverse lst1 in
  Printf.printf "Reversed: [%s]\n" 
    (String.concat "; " (List.map string_of_int (to_list lst7)));
  
  Printf.printf "\n6. Side effects with iterate:\n";
  Printf.printf "Elements: ";
  (match lst1 with
   | None -> Printf.printf "empty\n"
   | Some node -> 
       iterate (fun x -> Printf.printf "%d " x) node;
       Printf.printf "\n");
  
  Printf.printf "\n=== End of examples ===\n"
