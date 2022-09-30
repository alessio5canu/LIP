(*definzione del tipo card*)
type card = Joker | Val of int [1,10];;

let maggiore x y = 

  if x > y then true else y
;;

(*x -> carta giocatore ; y -> carta banco*)
let cards x y = 

  match (x,y) with
  |(Joker,Joker) -> false 
  |(Joker,y) -> true
  |(x,Joker) -> false
  |_ -> maggiore x y
;;


(*DA FINIRE*)
