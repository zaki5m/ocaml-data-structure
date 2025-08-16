(** Simple queue implementation *)

type 'a t

val empty : 'a t
val is_empty : 'a t -> bool
val push : 'a -> 'a t -> 'a t
val pop : 'a t -> 'a * 'a t
val peek : 'a t -> 'a
val size : 'a t -> int