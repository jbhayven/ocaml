let min_time a b =
    let rec helper a b acc =
        if a > b then 
            acc
        else helper (3 * a) (2 * b) (acc + 1)
    in helper a b 0
in

let a = Scanf.scanf " %d" (fun x -> x) in
let b = Scanf.scanf " %d" (fun x -> x) in
Printf.printf "%d\n" (min_time a b);
