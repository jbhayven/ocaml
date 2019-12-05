let n = Scanf.scanf " %d" (fun x -> x) in

let rec names n = 
    if n == 0 
    then [] 
    else Scanf.scanf " %s" (fun x -> x::(names (n - 1))) 
in

let sides names =
    let rec helper names acc =
        match names with
        | [] -> acc
        | hd::tl ->
            match hd with
            | "Tetrahedron" -> helper tl (acc + 4)
            | "Cube" -> helper tl (acc + 6)
            | "Octahedron" -> helper tl (acc + 8)
            | "Dodecahedron" -> helper tl (acc + 12)
            | "Icosahedron" -> helper tl (acc + 20)
            | _ -> 0
    in helper names 0
in

Printf.printf "%d\n" (sides (names 1));
Printf.printf "%d\n" (sides (names 2))
