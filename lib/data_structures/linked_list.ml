(** Simple linked list implementation *)

type 'a t = { data : 'a; next : 'a t option }

(** Empty list representation *)
let empty = None

(** Create a single-node list *)
let singleton x = { data = x; next = None }

(** Check if a list is empty *)
let is_empty = function
  | None -> true
  | Some _ -> false

(** Get the length of the list *)
let length lst =
  let rec loop acc = function
    | None -> acc
    | Some node -> 
        match node.next with
        | None -> acc + 1
        | Some next -> loop (acc + 1) (Some next)
  in
  loop 0 lst

(** Get the head of the list *)
let head = function
  | None -> None
  | Some node -> Some node.data

(** Get the tail of the list *)
let tail = function
  | None -> None
  | Some node -> node.next

(** Convert list to OCaml list *)
let to_list lst =
  let rec loop acc = function
    | None -> List.rev acc
    | Some node -> loop (node.data :: acc) node.next
  in
  loop [] lst

(** Convert OCaml list to linked list *)
let of_list = function
  | [] -> None
  | hd :: tl ->
      let rec build = function
        | [] -> None
        | x :: xs -> Some { data = x; next = build xs }
      in
      build (hd :: tl)

(** Prepend an element to the front *)
let prepend x = function
  | None -> Some (singleton x)
  | Some node -> Some { data = x; next = Some node }

(** Append two lists *)
let append lst1 lst2 =
  let rec loop = function
    | None -> lst2
    | Some node -> Some { data = node.data; next = loop node.next }
  in
  loop lst1

(** Map a function over the list *)
let map f lst =
  let rec loop = function
    | None -> None
    | Some node -> Some { data = f node.data; next = loop node.next }
  in
  loop lst

(** Filter elements that satisfy the predicate *)
let filter p lst =
  let rec loop = function
    | None -> None
    | Some node ->
        if p node.data then
          Some { data = node.data; next = loop node.next }
        else
          loop node.next
  in
  loop lst

(** Fold left over the list *)
let fold_left f acc lst =
  let rec loop acc = function
    | None -> acc
    | Some node -> loop (f acc node.data) node.next
  in
  loop acc lst

(** Fold right over the list *)
let fold_right f lst acc =
  let rec loop = function
    | None -> acc
    | Some node -> f node.data (loop node.next)
  in
  loop lst

(** Find the first element that satisfies the predicate *)
let find p lst =
  let rec loop = function
    | None -> None
    | Some node ->
        if p node.data then Some node.data
        else loop node.next
  in
  loop lst

(** Check if any element satisfies the predicate *)
let exists p lst =
  let rec loop = function
    | None -> false
    | Some node -> p node.data || loop node.next
  in
  loop lst

(** Check if all elements satisfy the predicate *)
let for_all p lst =
  let rec loop = function
    | None -> true
    | Some node -> p node.data && loop node.next
  in
  loop lst

(** Reverse the list *)
let reverse lst =
  let rec loop acc = function
    | None -> acc
    | Some node -> loop (prepend node.data acc) node.next
  in
  loop None lst

let rec iterate f node = match node.next with
  | None -> f node.data
  | Some x -> f node.data; iterate f x

let insert i x node = 
  let rec inner n current = 
    if i = n then
      Some { data = x; next = current }
    else
      match current with
        | None -> failwith "index out of bounds"
        | Some x -> Some { data = x.data; next = inner (n + 1) x.next }
  in
  match inner 0 node with
    | None -> failwith "innsertion failed"
    | Some x -> x

let remove i node =
  let rec inner n current = 
    if i + 1 = n then
      match current.next with
        | None -> failwith "index out of bounds"
        | Some x -> x.next
    else
      match current.next with
        | None -> failwith "index out of bounds"
        | Some x -> Some { data = current.data; next = inner (n+1) x }
  in
  let result = 
    if i = 0 then
      node.next
    else
      inner 0 node
    in
  match result with
    | None -> failwith "remove failed"
    | Some x -> x

