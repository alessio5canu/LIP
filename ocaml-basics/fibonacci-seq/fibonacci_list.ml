let rec f x y z somma =

  match z with
  |0 -> somma
  |_ -> f y somma (z-1) (y+somma)
;;

(* prende in input x, ossia l'x-esimo numero della sequenza di Fibonacci e lo rende in ouput*)
let fibonacci x =

  match x with
  |0 -> 1
  |1 -> 1
  |2 -> 1
  |_ -> f 1 1 x 0
;;

let rec crealista i n = 

  if(i <= n) then 
    [fibonacci i]@crealista (i+1) n
  else 
    []
;;

let fibonacci_list n = 

  if (n <= 0) then
    failwith("Valore n non valido!")
  else
    crealista 1 n
;;