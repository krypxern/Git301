abstype 'a set = set of 'a list
 	with val emptyset: 'a set = set []
 	fun singelton (e: 'a): 'a set = set [e]
	fun union(s1: 'a set, s2: 'a set): 'a set = set(s1 @ s2)
 	fun member(e: 'a, s: 'a set): bool = false
 	  | member(e, set (h::t)) = (e = h)
 					orelse member(e, set t)
 	fun intersection([], s2: 'a set): 'a set = s2
	  | intersection(set (h::t), s2: 'a set) = if (member(h, s2)) then intersection(t, s2) orelse set(h::intersect(t, s2))
end;
