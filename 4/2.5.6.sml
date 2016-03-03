(* Dan Turchiano *)
(* Problem set 4 *)
(* Exercise 2.5.6*)

fun listUpTo 0 = []
  | listUpTo a = a :: listUpTo(a-1);

fun divides b = fn a => (b mod a) = 0;

fun curry f = fn x => fn y => f(x,y);

fun isPerfect a = a = (List.foldl (op +) 0 (List.filter (divides a) (listUpTo(a-1))));

(*
(6)
(6 5 4 3 2 1)
(3 2 1)
6!

First create a list of lesser values
Next remove the head value of this list
Next filter for any values who do not divide the head value
Finally take a sum of the new list
*)
