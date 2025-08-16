(** Simple linked list implementation *)

type 'a t = { data : 'a; next : 'a t option }


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
    if i == 0 then
      node.next
    else
      inner 0 node
    in
  match result with
    | None -> failwith "remove failed"
    | Some x -> x

