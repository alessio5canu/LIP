(* controllo positività di una funzione *)
let is_posfrac (a,b) = 
  
  if (a > 0) &&  (b > 0) && (a/b) >= 0 then 
    true 
  else if (b = 0) then
    failwith("b NON puo' essere 0!")
  else if (a < 0) && (b < 0) then
    true
  else
    false
;;

(* comparazione frazioni positive *)
let compare_posfrac (a,b)(x,y) = 

  if is_posfrac(a,b) && is_posfrac(x,y) then
    if ((a = x) && (b = y)) || ((b/a) = (y/x)) then 0
    else if ((b/a) < (y/x)) then 1
    else (-1)
  else failwith("frazione non positiva!")
;;

(* comparazione frazioni *)
let compare_frac (a,b)(x,y) = 
  
  if (is_posfrac(a,b) && is_posfrac(x,y)) = false then 
    if is_posfrac(a,b) = false then (-1)
    else if is_posfrac(x,y) = false then 1
    else 0
  else 
    compare_posfrac (a,b)(x,y)
;;
