(* val dup : 'a list -> bool = <fun> *) 

let rec controllo l e = 

  match l with
  |[] -> false
  |a::l1 -> if (a = e) then true else controllo l1 e
;;

let rec dup l = 

  match l with  
  |[] -> false 
  |a::l1 -> if (controllo l1 a) then true else dup l1
;;