(* # Random.int;;
- : int -> int = <fun> *)

let rec crealista l n a b = 

  match n with
  |0 -> l
  |_ -> Random.int b::crealista (l) (n-1) 1 b
;;
                                    
(* val rnd_list : int -> int -> int list = <fun> *)
(*n -> numero elementi // b -> estremo dx range*)
let  rnd_list n b = 

  match n with
  |0 -> []
  |_ -> crealista [] n 1 b
;;