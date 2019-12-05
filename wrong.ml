let rec simulate n k =
    match k with
    | 0 -> n
    | _ -> match n mod 10 with
        | 0 -> simulate (n / 10) (k - 1)
        | _ -> simulate (n - 1) (k - 1)
in

let n = Scanf.scanf " %d" (fun x -> x) in
let k = Scanf.scanf " %d" (fun x -> x) in

Printf.printf "%d\n" (simulate n k)
;;
