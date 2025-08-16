open Data_structures
open Algorithms

let demo_stack () =
  print_endline "=== Stack Demo ===";
  let stack = Stack.empty in
  let stack = Stack.push 10 stack in
  let stack = Stack.push 20 stack in
  let stack = Stack.push 30 stack in
  Printf.printf "Stack size: %d\n" (Stack.size stack);
  Printf.printf "Top element: %d\n" (Stack.peek stack);
  let (value, stack) = Stack.pop stack in
  Printf.printf "Popped: %d\n" value;
  Printf.printf "New top: %d\n" (Stack.peek stack);
  print_endline ""

let demo_sorting () =
  print_endline "=== Sorting Demo ===";
  let data = [64; 34; 25; 12; 22; 11; 90] in
  Printf.printf "Original: %s\n" (String.concat "; " (List.map string_of_int data));
  
  let bubble_sorted = Sorting.bubble_sort data in
  Printf.printf "Bubble sort: %s\n" (String.concat "; " (List.map string_of_int bubble_sorted));
  
  let quick_sorted = Sorting.quick_sort data in
  Printf.printf "Quick sort: %s\n" (String.concat "; " (List.map string_of_int quick_sorted));
  print_endline ""

let () =
  print_endline "Data Structures and Algorithms Demo";
  print_endline "===================================";
  demo_stack ();
  demo_sorting ()
