open Printf

let rec string_of_int_list (lst : int list) : string =
  match lst with
    | [] -> ""
    | head::tail -> (string_of_int head) ^ "; " ^ (string_of_int_list tail);;

let lst1 = [1;2;3;4];;

(printf "%s\n" (string_of_int_list lst1));;

let rec string_of_string_list (lst : string list) : string =
  match lst with
    | [] -> ""
    | head::tail -> "\"" ^ head ^ "\"" ^ "; " ^ (string_of_string_list tail);;
    (* instead of a, print "a" *)

let slist = ["a"; "b"; "c"; "d"; "purple"];;
(printf "%s\n" (string_of_string_list slist));;


let rec string_of_a_list (a_to_s : ('a -> string)) (lst : 'a list) : string =
  match lst with
    | [] -> ""
    | head::tail -> (a_to_s head) ^ ";" ^ (string_of_a_list a_to_s tail);;

(* let string_of_string (s : string) : string = "\"" ^ s ^ "\"";; *)

let string_of_string = (fun (s : string) : string -> "\"" ^ s ^ "\"");;

(printf "%s\n" (string_of_a_list string_of_int lst1));;

(printf "%s\n" (string_of_a_list
  (fun (s : string) : string -> "\"" ^ s ^ "\"") slist));;

let nested_lst = [[1;2];[3;4]];;

(printf "%s\n" (string_of_a_list (string_of_a_list string_of_int) nested_lst));;


(*
  A: string_of_int_list
  B: (string_of_a_list string_of_int)
  C: (string_of_a_list string_of_int nested_lst)
  D: NULL
  E: Something else
*)



