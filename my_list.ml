type 'a my_list = 
| Nil
| Cons of 'a * 'a my_list

let string_of_list f l =
  let rec aux = function
    | Nil -> ""
    | Cons (h,Nil) -> f h
    | Cons (h,t) -> (f h) ^ ", " ^ (aux t)
  in "[" ^ (aux l) ^ "]"

let hd = function
  | Nil -> None
  | Cons (h,_) -> Some h

let tl = function
  | Nil -> None
  | Cons (_,t) -> Some t

let rec length = function
  | Nil -> 0
  | Cons (_,t) -> 1 + (length t)

let rec map f = function
  | Nil -> Nil
  | Cons (h,t) -> Cons (f h, map f t)
