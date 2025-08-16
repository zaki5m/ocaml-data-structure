(** Simple queue implementation *)

type 'a t = { front : 'a list; back : 'a list }

let empty = { front = []; back = [] }

let is_empty queue = ( queue.front = [] && queue.back = [] )

let push x queue = { queue with back = x :: queue.back }

let normalize queue = 
  if queue.front = [] then
    { front = List.rev queue.back; back = [] }
  else
    queue

let pop queue = 
  let q = normalize queue in
  match q.front with
    | [] -> failwith "Queue is empty"
    | x :: xs -> (x, { front = xs; back = q.back })

let peek queue = 
  let q = normalize queue in
  match q.front with
    | [] -> failwith "Queue is empty"
    | x :: _ -> x

let size queue = List.length queue.front + List.length queue.back