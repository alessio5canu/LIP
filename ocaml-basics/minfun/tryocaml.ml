(* val minfun : (int -> 'a) -> int -> int -> 'a option = <fun> *)
type 'a option = Some of 'a | None 
                 
let f x = x*5;;

let rec minRic funz x y= 
  
  if (x = y) then f x
  else
    min (f x) (minRic f (x+1) y) 
;; 

let minfun f a b = if (a > b) then None else minRic(f a b);;