(** simple queue implementation *)

type 'a t = 'a list

let empty = []

let is_empty queue = queue = []

let push x queue = 
  let rec append_last = function
    | [] -> [x]
    | q :: qs -> q :: append_last qs
  in
  append_last queue

let pop = function 
  | [] -> failwith "Queue is empty"
  | x :: xs -> (x, xs)

let peek = function
  | [] -> failwith "Queue is empty"
  | x :: _ -> x

let size queue = List.length queue