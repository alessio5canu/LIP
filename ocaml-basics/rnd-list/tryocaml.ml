(* # Random.int;;
- : int -> int = <fun> *)

let random : int = Random.int 100;; 

let crealista l

(* val rnd_list : int -> int -> int list = <fun> *)
let rec rnd_list n b = 

  match n with
  |0 -> []
  |_ -> crealista [] (n-1)
;;