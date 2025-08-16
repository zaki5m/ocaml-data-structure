(** Simple queue implementation *)

(**
  Note: This simple queue implementation uses a single list. 
  The push operation appends at the end, which costs O(n).

  A common alternative is to represent the queue with two lists:
    - front: elements available for pop (in correct order)
    - back: elements recently pushed (in reverse order)
  
  Enqueue (push) just conses onto back, O(1).
  Dequeue (pop) takes from front if non-empty; if front is empty,
  back is reversed and becomes the new front. Although reversing 
  costs O(n), each element is moved at most once, so the amortized 
  cost of both push and pop is O(1).
*)

(** The type of queues containing elements of type 'a *)
type 'a t = { front : 'a list; back : 'a list }

(** The empty queue *)
val empty : 'a t

(** [is_empty queue] returns true if the queue is empty, false otherwise *)
val is_empty : 'a t -> bool

(** [push x queue] returns a new queue with element x added to the back *)
val push : 'a -> 'a t -> 'a t

(** [pop queue] returns a pair (x, queue') where x is the front element
    and queue' is the queue with the front element removed.
    Raises [Failure "Queue is empty"] if the queue is empty *)
val pop : 'a t -> 'a * 'a t

(** [peek queue] returns the front element without removing it.
    Raises [Failure "Queue is empty"] if the queue is empty *)
val peek : 'a t -> 'a

(** [size queue] returns the number of elements in the queue *)
val size : 'a t -> int