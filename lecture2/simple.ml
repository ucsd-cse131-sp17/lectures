open Printf

type bst =
  | Node of string * bst * bst
  | Leaf
;;

let bst1 = Node("c",
  Node("a", Leaf, Leaf),
  Node("e", Leaf, Leaf));;

let bst2 =
  Node("m",
       Node("j",
            Node("a", Leaf, Leaf),
            Node("k", Leaf, Leaf)),
       Leaf);;

let rec string_of_bst (b : bst) : string =
  match b with
    | Leaf -> "Leaf"
    | Node(s, left, right) ->
      "Node(\"" ^ s ^ "\", " ^
        (string_of_bst left) ^
        (string_of_bst right) ^
        ")";;

(printf "%s\n" (string_of_bst bst1))
