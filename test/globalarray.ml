let a = Array.make 10 1 in
let rec f x = a.(0) <- 120 in
f 0; print_char (a.(0))
