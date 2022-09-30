let rec maxnat x y = 
  
  if(x,y) >= (0,0) then
    if x > y then
      x
    else if x = y then
      y
    else
      y
  else
    failwith("Numeri NON naturali!")
;;