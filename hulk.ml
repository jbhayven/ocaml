let text_gen n =
    let rec helper k acc =
        if k == n 
        then acc ^ " it"
        else 
            if k mod 2 == 0 
            then helper (k+1) (acc ^ " that I hate")
            else helper (k+1) (acc ^ " that I love")
    in helper 1 "I hate"
in
        
let n = read_int() in
Printf.printf "%s\n" (text_gen n)
