val () =
  describe "!!" (fn () =>
    let
      val fib = [1, 1, 2, 3, 5, 8, 13]
    in
      it "fib !! 0 == 1" (fn () =>
        assertEqual 1 (fib !! 0));

      it "fib !! 1 == 1" (fn () =>
        assertEqual 1 (fib !! 1));

      it "fib !! 2 == 2" (fn () =>
        assertEqual 2 (fib !! 2));

      it "fib !! 3 == 3" (fn () =>
        assertEqual 3 (fib !! 3));

      it "fib !! 4 == 4" (fn () =>
        assertEqual 5 (fib !! 4));

      it "fib !! 5 == 8" (fn () =>
        assertEqual 8 (fib !! 5))
    end
  )
