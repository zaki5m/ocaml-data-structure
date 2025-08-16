open Data_structures.Linked_list

let test_basic_operations () =
  Printf.printf "Testing basic operations...\n";
  
  (* Test empty list *)
  assert (is_empty empty);
  assert (length empty = 0);
  assert (head empty = None);
  assert (tail empty = None);
  
  (* Test singleton *)
  let single = Some (singleton 42) in
  assert (not (is_empty single));
  assert (length single = 1);
  assert (head single = Some 42);
  assert (is_empty (tail single));
  
  (* Test of_list and to_list *)
  let lst = of_list [1; 2; 3] in
  assert (to_list lst = [1; 2; 3]);
  assert (length lst = 3);
  
  Printf.printf "✓ Basic operations passed\n"

let test_functional_operations () =
  Printf.printf "Testing functional operations...\n";
  
  let lst = of_list [1; 2; 3; 4; 5] in
  
  (* Test map *)
  let doubled = map (fun x -> x * 2) lst in
  assert (to_list doubled = [2; 4; 6; 8; 10]);
  
  (* Test filter *)
  let evens = filter (fun x -> x mod 2 = 0) lst in
  assert (to_list evens = [2; 4]);
  
  (* Test fold operations *)
  assert (fold_left (+) 0 lst = 15);
  assert (fold_right (+) lst 0 = 15);
  
  (* Test search operations *)
  assert (find (fun x -> x > 3) lst = Some 4);
  assert (find (fun x -> x > 10) lst = None);
  assert (exists (fun x -> x > 3) lst = true);
  assert (exists (fun x -> x > 10) lst = false);
  assert (for_all (fun x -> x > 0) lst = true);
  assert (for_all (fun x -> x > 2) lst = false);
  
  Printf.printf "✓ Functional operations passed\n"

let test_list_manipulation () =
  Printf.printf "Testing list manipulation...\n";
  
  let lst1 = of_list [2; 3; 4] in
  let lst2 = of_list [5; 6] in
  
  (* Test prepend *)
  let prepended = prepend 1 lst1 in
  assert (to_list prepended = [1; 2; 3; 4]);
  
  (* Test append *)
  let appended = append lst1 lst2 in
  assert (to_list appended = [2; 3; 4; 5; 6]);
  
  (* Test reverse *)
  let reversed = reverse lst1 in
  assert (to_list reversed = [4; 3; 2]);
  
  Printf.printf "✓ List manipulation passed\n"

let test_edge_cases () =
  Printf.printf "Testing edge cases...\n";
  
  (* Test empty list operations *)
  assert (map (fun x -> x) empty = empty);
  assert (filter (fun _ -> true) empty = empty);
  assert (fold_left (+) 0 empty = 0);
  assert (fold_right (+) empty 0 = 0);
  assert (find (fun _ -> true) empty = None);
  assert (not (exists (fun _ -> true) empty));
  assert (for_all (fun _ -> false) empty);
  assert (reverse empty = empty);
  assert (append empty empty = empty);
  
  Printf.printf "✓ Edge cases passed\n"

let () =
  Printf.printf "=== Running Linked List Tests ===\n\n";
  test_basic_operations ();
  test_functional_operations ();
  test_list_manipulation ();
  test_edge_cases ();
  Printf.printf "\n🎉 All tests passed!\n"
