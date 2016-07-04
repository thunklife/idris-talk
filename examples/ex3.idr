module Ex3

data Vect : Nat -> Type -> Type where
  Nil : Vect Z a
  (::) : a -> Vect k a -> Vect (S k) a

-- Example of Idris suggesting implementation based on
-- types only
zipWith : (a -> b -> c) -> Vect n a -> Vect n b -> Vect n c
zipWith f [] y = []
zipWith f (x :: z) (y :: w) = f x y :: zipWith f z w
