val () =
  describe "|>" (fn () =>
    let
      val add = fn x => fn y => x + y
      val mul = fn x => fn y => x * y
    in
      it "1 |> (+2) |> (*3) == 9" (fn () =>
        assertEqual 9 (1 |> add 2 |> mul 3));

      it "1 |> (*2) |> (+3) == 5" (fn () =>
        assertEqual 5 (1 |> mul 2 |> add 3));

      it "should respect fog" (fn () =>
        assertEqual 22 (1 |> (mul 5) o (add 3) |> add 2));

      it "should respect ref" (fn () =>
        let
          val v = ref 1
        in
          v := !v |> add 2 |> mul 3;
          assertEqual 9 (!v)
        end)
    end
  )
