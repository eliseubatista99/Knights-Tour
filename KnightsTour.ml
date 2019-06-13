open Scanf
open Printf

let rec fullBoard n chess i j =
  if i = n then
    true
  else if j = n then
    fullBoard n chess (i+1) 0
  else if chess.(i).(j) = 0 then
    false
  else fullBoard n chess i (j+1) 

let onBoard n chess i j = 
  ( i >= 0 && i < n && j >= 0 && j < n) && chess.(i).(j) = 0


let rec backtracking n chess i j =
    let verticalJumps = [|-1; -2; 1; -2; -1; 2; 2; 1|] in
    let horizontalJumps = [|-2; -1; 2; 1; 2; -1; 1; -2|] in
    let rec ciclo count =
      let verify = ref false in
      let ()=
          if count<8 then
            (
              if(onBoard n chess (i+horizontalJumps.(count)) (j+verticalJumps.(count))) then 
              (
                chess.(i+horizontalJumps.(count)).(j+verticalJumps.(count)) <- 1;
                   if backtracking n chess (i+horizontalJumps.(count)) (j+verticalJumps.(count)) then verify:= true
              ) 
            )
            
      in
        if (!verify)||(count=8) then !verify else ciclo (count+1) in
        (fullBoard n chess 0 0 ) ||  ciclo 0
     
let () = 
  let n = scanf " %d" (fun x -> x) in 
  let chess = Array.make_matrix n n 0 in 
  let (i, j) = scanf " %d %d" (fun x y -> chess.(x).(y) <- 1; x,y) in
  let k = scanf " %d" (fun x -> x) in 
  let x = ref 0 in
  let y = ref 0 in
  let () =
    for a = 1 to k do
      x := scanf " %d" (fun x -> x);
      y := scanf " %d" (fun x -> x);
      chess.(!x).(!y) <- -1
    done
  in
  if(backtracking n chess i j) then
    print_endline "YES"
  else
    print_endline "NO"