let rec lunghezzalista l = 

  match l with
  |[] (*lista vuota*) -> 0
  |a::l1 -> 1 + lunghezzalista l1
;;

let rec extract i l = 

  if (i >= 0) && (i <= ((lunghezzalista l) -1)) then
    match l with
    |[] -> 0
    |a::l1 -> if i = 0 then a else extract (i-1) l1
  else
    failwith("indice elemento non valido!");
;;

let rec crealista l x length lfin = 

  match l with
  |[] -> (x,lfin)
  |a::l1 -> if length > 0 then if a = x then crealista l1 x (length-1) lfin else crealista l1 x (length-1) (lfin@[a]) else (x,lfin)
;;


let extractpair i l = 

  if (i >= 0) && (i <= ((lunghezzalista l) -1)) then
    crealista l (extract i l) (lunghezzalista l) []
  else
    failwith("indice elemento non valido!");
;;








