open Printf

let add_points (pa : (int * int)) (pb : (int * int)) : (int * int) =
  let (pax, pay) = pa in
  let (pbx, pby) = pb in
  (pax + pbx, pay + pby);;

let p1 = (1, 2);;
let p2 = (3, 4);;

let p_added = (add_points p1 p2);;

let (p_added_x, p_added_y) = p_added;;
(printf "%d %d\n" p_added_x p_added_y);;


(* (string * int) list *)

let map1 = [("x", 1); ("y", 2)];;
let map2 = [];;
let map3 = [("x", 1); ("y", 2); ("x", 3)];;

let rec find (m : (string * int) list) (s : string) : int =
  match m with
    | [] ->
      failwith ("Not found " ^ s)
    | (key, value)::rest ->
      if key = s then value
      else find rest s;;


