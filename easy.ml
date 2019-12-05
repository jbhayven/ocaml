let getInt = 
    Scanf.scanf " %d" (fun x -> x) 
in

let rec getList n = 
    if n == 0 
    then [] 
    else Scanf.scanf " %d" (fun x -> x::(getList (n - 1))) 
in
    
let rec easy answers =
    match answers with
    | 0::tl -> easy tl
    | 1::tl -> false
    | _ -> true
in

let n = getInt in
let answers = getList n in

if easy answers 
then 
    Printf.printf "EASY\n"
else 
    Printf.printf "HARD\n"
