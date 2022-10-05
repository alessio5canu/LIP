let rec rev l = 

  match l with
  |[] -> l
  |a::l1 -> (rev l1)@[a]
;;