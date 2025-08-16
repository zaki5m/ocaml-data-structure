(** Singly linked list implementation *)

type 'a t = { data : 'a; next : 'a t option; }
(** The type of linked list nodes *)

val empty : 'a t option
(** Empty list *)

val singleton : 'a -> 'a t
(** Create a single-node list *)

val is_empty : 'a t option -> bool
(** Check if a list is empty *)

val length : 'a t option -> int
(** Get the length of the list. O(n) time *)

val head : 'a t option -> 'a option
(** Get the first element. O(1) time *)

val tail : 'a t option -> 'a t option
(** Get the list without the first element. O(1) time *)

val to_list : 'a t option -> 'a list
(** Convert to OCaml list. O(n) time *)

val of_list : 'a list -> 'a t option
(** Convert from OCaml list. O(n) time *)

val prepend : 'a -> 'a t option -> 'a t option
(** Add element to front. O(1) time *)

val append : 'a t option -> 'a t option -> 'a t option
(** Concatenate two lists. O(n) time where n is length of first list *)

val map : ('a -> 'b) -> 'a t option -> 'b t option
(** Apply function to each element. O(n) time *)

val filter : ('a -> bool) -> 'a t option -> 'a t option
(** Keep only elements satisfying predicate. O(n) time *)

val fold_left : ('acc -> 'a -> 'acc) -> 'acc -> 'a t option -> 'acc
(** Fold from left. O(n) time *)

val fold_right : ('a -> 'acc -> 'acc) -> 'a t option -> 'acc -> 'acc
(** Fold from right. O(n) time *)

val find : ('a -> bool) -> 'a t option -> 'a option
(** Find first element satisfying predicate. O(n) time *)

val exists : ('a -> bool) -> 'a t option -> bool
(** Check if any element satisfies predicate. O(n) time *)

val for_all : ('a -> bool) -> 'a t option -> bool
(** Check if all elements satisfy predicate. O(n) time *)

val reverse : 'a t option -> 'a t option
(** Reverse the list. O(n) time *)

val iterate : ('a -> unit) -> 'a t -> unit
(** Apply function to each element for side effects. O(n) time *)

val insert : int -> 'a -> 'a t option -> 'a t
(** Insert element at given index. O(n) time *)

val remove : int -> 'a t -> 'a t
(** Remove element at given index. O(n) time *)
