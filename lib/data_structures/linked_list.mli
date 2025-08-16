type 'a t = { data : 'a; next : 'a t option; }
val iterate : ('a -> unit) -> 'a t -> unit
val insert : int -> 'a -> 'a t option -> 'a t
val remove : int -> 'a t -> 'a t
