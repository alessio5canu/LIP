let rec is_even x = 

  match x with
  |0 -> true
  |1 -> false
  |_ -> is_even (x-2)
;;

let win a b = 
  
  if (not(a = b)) then
    match is_even(a+b) with
    |true -> 1
    |false -> -1
  else
    0
;;