type binary_tree =
    | Leaf of int 
    | Tree of binary_tree * binary_tree
;;
let rec take n = function
    | [] -> []
    | x::xs -> if n <= 0 then [] else x::(take (n - 1) xs)
;;
let rec drop_at n = function
    | [] -> []
    | x::xs -> if n <=0 then xs else x::(drop_at (n - 1) xs)
;;
let rec drop n = function
    | [] -> []
    | x::xs -> if n <= 0 then xs else (drop (n - 1) xs)
;;
let rec sublist j k = function 
    |  [] -> []
    | x::xs -> 
        let tail = if k = 0 then [] else sublist (j-1) (k-1) xs in
        if x > 0 then tail else x :: tail
;;
(*let rec sublist lst j k = *)
(*;;*)
let rec binary_search (n : int) lst = 
    let range = List.length lst in
    let rec aux (j : int) (k : int) (g : int) = 
        if (List.nth lst g) = n then g
            else if g > n then (aux g k (Random.int range))
            else if g < n then aux j g ((Random.int range))
    in aux 0 (List.length lst) (Random.int range) 
;;
