let sum lst = 
  let rec aux acc = function
    | [] -> acc
    | [x] -> x + acc 
    | x::xs -> aux (x+acc) xs
  in aux 0 lst
;;

let p1 = 
  let rec aux n acc = 
    if n mod 5 = 0 || n mod 3 = 0 then aux (n+1) (n::acc) else aux (n+1) acc
  in 
  sum (aux 3 [])
;;


let rec fib = function 
  | 0 -> 0
  | 1 -> 1
  | n -> fib (n-1) + fib (n-2)
;;
let p2 =
  let rec aux n acc = 
    let num = fib n in
    if num >= 4_000_000 then acc else aux (n+3) (num+acc)
  in aux 3 0 
;;
type 'a factor = 
  | Prime of 'a 
  | Comp of 'a factor list
;;
let factors n =  
  let rec aux acc x = 
    if x >= 1 then
      if n mod x = 0 then aux (x::acc) (x-1) else aux acc (x-1)
    else acc
  in aux [] (n / 2)
;;
let factor_tree n = 
    List.map (fun x -> factors x)
;;

