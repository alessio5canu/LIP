(*definzione del tipo card*)
type card = Joker | Val of int;;

let maggiore x y = 

  if (x >= Val 1 && x <= Val 10) && (y >= Val 1 && y <= Val 10) then
    if x > y then true else false
  else
    failwith("Valori fuori dal range!")
;;

(* x -> utente ; y -> banco*)
let win x y = 

  match(x,y) with
  |(Joker,Joker) -> false
  |(Joker,y) -> if (y >= Val 1 && y <= Val 10) then true else failwith("Valori fuori dal range!")
  |(x,Joker) -> if (x >= Val 1 && x <= Val 10) then false else failwith("Valori fuori dal range!")
  |_ -> maggiore x y  
;;