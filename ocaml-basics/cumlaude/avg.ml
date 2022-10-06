type grade = Val of int | CumLaude;;

(* val is_valid : grade -> bool = <fun> *)
let is_valid x = 

  match x with
  |Val n -> (n >= 18) && (n <= 30)
  |CumLaude -> true
;;

(* val int_of_grade : grade -> int = <fun> *)
let int_of_grade x = 

  if is_valid x then
    match x with
    |Val n -> n
    |CumLaude -> 32
  else
    failwith("Voto non valido!")
;;

(* somma di tutti gli elementi di una lista *) 
let rec sommalista l = 

  match l with
  |[] (*lista vuota*) ->0
  |a::l1 -> a + sommalista l1
;;

let rec lunghezzalista l = 

  match l with
  |[] (*lista vuota*) -> 0
  |a::l1 -> 1 + lunghezzalista l1
;;

(* val avg : grade list -> float = <fun> *)
let avg l = 

  match l with
  |[] -> float_of_int(0)
  |a::l1 -> (float_of_int(sommalista l)/.float_of_int(lunghezzalista l))
;;






