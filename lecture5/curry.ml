open Printf

let add (x : int) (y : int) : int = x + y;;

let add5 = (add 5);;
let add10 = (add 10);;

(printf "%d\n" (add5 10));;
(printf "%d\n" (add5 20));;

(* Currying *)

