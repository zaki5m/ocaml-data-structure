(** Sorting algorithms *)

let rec bubble_sort = function
  | [] -> []
  | [x] -> [x]
  | lst ->
    let rec bubble = function
      | [] -> []
      | [x] -> [x]
      | x :: y :: rest when x > y -> y :: bubble (x :: rest)
      | x :: rest -> x :: bubble rest
    in
    let bubbled = bubble lst in
    let last = List.rev bubbled |> List.hd in
    let without_last = List.rev bubbled |> List.tl |> List.rev in
    bubble_sort without_last @ [last]

let rec quick_sort = function
  | [] -> []
  | pivot :: rest ->
    let smaller, larger = List.partition (fun x -> x < pivot) rest in
    quick_sort smaller @ [pivot] @ quick_sort larger
