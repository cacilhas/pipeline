(* http://mlton.org/InfixingOperators *)

infix  2 o
infix  0 :=

infix  1 |>     val op|> = fn (x, f) => f x (* Elm and Julia pipeline style *)
infixr 1 $      val op$  = fn (f, y) => f y (* Haskell pipeline style       *)
infix  6 !!     val op!! = List.nth         (* Indexing                     *)
