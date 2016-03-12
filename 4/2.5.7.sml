(*  *)

fun length [] = 0 | length (x::xs) = 1 + length(xs);

fun remAtIndh [] n t = ((*print("HitNull\n"); *)[])
 |  remAtIndh (x::xs) n 0 = xs
 |  remAtIndh (x::xs) 0 t = ((*print("HitZero\n");*)[])
 |  remAtIndh (x::xs) n t = if(n = t)
				then ((*print("HitMatch\n");*)remAtIndh xs (t-1) t)
 				else ((*print("HitMiss\n");*)x::(remAtIndh xs (n-1) t));

fun remAtInd l t = remAtIndh (l) (length(l)) (length(l)-t);

fun setDecomh [] n = []
  | setDecomh l 0 = []
  | setDecomh l n = (setDecom (remAtInd l (n-1)) (n-1) ) @ (setDecomh l (n-1))

and setDecom [] n = []
 |  setDecom l 0 = setDecomh l (length l)
 |  setDecom l n = (remAtInd l (n-1)) :: (setDecom l (n-1));

fun contains [] n = false
 |  contains (x::xs) n = (x = n) orelse (contains xs n);

fun insert l n = if(contains l n)
			then (l)
			else (n :: l);

fun removeRepeats [] = []
 |  removeRepeats (l::ls) = (insert (removeRepeats ls) l);

fun powerset l = l :: removeRepeats (setDecom l (length l));

(*
SetDecom
Remove Last Element
cons to:
Remove Second to Last Element
cons to:
.
.
.
Remove First Element
cons to:
SetDecomh

***

SetDecomh
SetDecom(Remove Last Element)
append to:
SetDecom(Remove Second to Last Element)
append to:
.
.
.
SetDecom(Remove First Element)
append to:
[]

***

fun setsplit l 0 =

fun powerset l = setsplit(l length(l))
*)
