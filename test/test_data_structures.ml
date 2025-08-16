open Data_structures
open Algorithms

let test_stack () =
  let stack = Stack.empty in
  assert (Stack.is_empty stack);
  let stack = Stack.push 1 stack in
  let stack = Stack.push 2 stack in
  assert (Stack.peek stack = 2);
  let (value, stack) = Stack.pop stack in
  assert (value = 2);
  assert (Stack.peek stack = 1);
  print_endline "Stack tests passed!"

let test_queue () =
  let queue = Queue.empty in
  assert (Queue.is_empty queue);
  let queue = Queue.push 1 queue in
  let queue = Queue.push 2 queue in
  assert (Queue.peek queue = 1);
  let (value, queue) = Queue.pop queue in
  assert (value = 1);
  assert (Queue.peek queue = 2);
  print_endline "Queue tests passed!"


let test_sorting () =
  let unsorted = [3; 1; 4; 1; 5; 9; 2; 6] in
  let expected = [1; 1; 2; 3; 4; 5; 6; 9] in
  assert (Sorting.bubble_sort unsorted = expected);
  assert (Sorting.quick_sort unsorted = expected);
  print_endline "Sorting tests passed!"

let () =
  test_stack ();
  test_queue ();
  test_sorting ();
  print_endline "All tests passed!"
