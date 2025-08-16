(** Simple stack implementation *)

type 'a t = 'a list

let empty = []

let is_empty stack = stack = []

let push x stack = x :: stack

let pop = function
  | [] -> failwith "Stack is empty"
  | x :: xs -> (x, xs)

let peek = function
  | [] -> failwith "Stack is empty"
  | x :: _ -> x

let size stack = List.length stack
