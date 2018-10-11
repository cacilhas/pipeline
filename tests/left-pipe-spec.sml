val () =
  describe "$" (fn () =>
    let
      val add = fn x => fn y => x + y
      val mul = fn x => fn y => x * y
      val f = add 3
      val g = mul 5
    in
      it "(*3) $ (+2) $ 1 == 9" (fn () =>
        assertEqual 9 (mul 3 $ add 2 $ 1));

      it "(+3) $ (*2) $ 1 == 5" (fn () =>
        assertEqual 5 (add 3 $ mul 2 $ 1));

      it "should respect fog" (fn () =>
        assertEqual 22 (add 2 $ g o f $ 1));

      it "should respect ref" (fn () =>
        let
          val v = ref 1
        in
          v := add 3 $ mul 2 $ !v;
          assertEqual 5 (!v)
        end)
    end
  )
