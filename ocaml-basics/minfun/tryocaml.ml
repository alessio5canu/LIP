type 'a option = Some of 'a | None
                 
let f x = x;;
              
let rec minfun f x y = 

  if x = y then None
  else
    match y with
    |0 -> 
    |_ -> minfun f (if 
                    ;;