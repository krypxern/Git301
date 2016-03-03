(*  *)

fun length [] = 0 | length (x::xs) = 1 + length(xs);

fun remAtIndh [] n t = (print("HitNull\n"); [])
 |  remAtIndh (x::xs) n 0 = xs
 |  remAtIndh (x::xs) 0 t = (print("HitZero\n");[])
 |  remAtIndh (x::xs) n t = if(n = t)
				then ((print("HitMatch\n"); remAtIndh xs (t-1) t))
 				else (print("HitMiss\n"); x::(remAtIndh xs (n-1) t));

fun remAtInd l t = remAtIndh (l) (length(l)) (length(l)-t);
(*
fun setsplit l 0 =

fun powerset l = setsplit(l length(l))
*)
