local
  (* http://mlton.org/InfixingOperators *)

  infix  3 \>     fun f \> y = f y                  (* Left application  *)
  infixr 3 </     fun x </ f = f x                  (* Right application *)

in
  infix  2 o
  infix  0 :=

  infix  1 |>     val op|> = op</      (* Elm and Julia pipeline style *)
  infixr 1 $      val op$  = op\>      (* Haskell pipeline style       *)
  infix  6 !!     val op!! = List.nth  (* Indexing                     *)
end
