open OUnit2
open Printf
open Bst
open ExtLib





let t_str (name : string) (value : string) (expected : string) = name>::
  (fun _ -> assert_equal expected value);;

let t_int (name : string) (value : int) (expected : int) = name>::
  (fun _ -> assert_equal expected value ~printer:string_of_int);;




let suite = "suite">:::[
  (t_int "fact" (1 + 1) 2);

];;

run_test_tt_main suite





