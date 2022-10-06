let rec string_of_list1 l = 
  match l with
  |[] -> "]"
  |a::[] -> string_of_int(a) ^ string_of_list1 []
  |a::l1 -> ((string_of_int(a))^";")^string_of_list1 l1
;;

let string_of_list l = "[" ^ string_of_list1 l;;
