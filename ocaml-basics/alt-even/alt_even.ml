(* alt_even: int -> bool *)

let rec sudd_lista l x = 

  if (x/10) = 0 then (l@[x])
  else 
    sudd_lista (l@[x mod 10])(*lista*) (x/10)
;;

let rec scorri l i= 

  match l with
  |[] -> true
  |a::l1 -> if ((i mod 2 = 0) && not(a mod 2 = 0)) || ((a mod 2 = 0) && not(i mod 2 = 0)) then false else scorri l1 (i+1)
;;

let alt_even x = 

  if x < 0 then failwith("Valore non valido!")
  else
    scorri(sudd_lista [] x) 0
;;