open Printf

type bst =
  | Node of string * bst * bst
  | Leaf;;

let bst1 = Node("c", Node("b", Leaf, Leaf), Node("d", Leaf, Leaf));;
let bst2 = Node("m",
                Node("j",
                     Node("a", Leaf, Leaf),
                     Node("k", Leaf, Leaf)),
                Leaf);;

(* ^ is string concatenation *)

let rec string_of_bst (t : bst) : string =
  match t with
    | Node(s, left, right) ->
      "N(" ^ s ^ ", " ^ (string_of_bst left) ^ ", " ^
        (string_of_bst right) ^ ")"
    | Leaf ->
      "L";;

(printf "%s\n" (string_of_bst bst1));;

let rec insert (t : bst) (toinsert : string) : bst =
  match t with
    | Leaf -> Node(toinsert, Leaf, Leaf)
    | Node(s, left, right) -> 
      if s > toinsert then
        Node(s, insert left toinsert, right)
      else if s < toinsert then
        Node(s, left, insert right toinsert)
      else
        t;;

(printf "%s\n" (string_of_bst (insert Leaf "a")));;
(printf "%s\n" (string_of_bst (insert bst1 "a")));;

