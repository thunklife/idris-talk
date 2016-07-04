module Ex1

{-
Some built in types:

Int - Fixed-precision integers of undefined size
Integer - Arbitrary precision; this is the default
Double - Double-precision floating point
Nat - Unbound, unsigned integers that can be patten matched

String
Char

Bool

List a - List that is polymorphic in it's element
List Int - List that is specialized to Int

(a, b) - Polymorphic tuple
(19, "Hello") - Tuple of type (Integer, String)
-}

add : Int -> Int -> Int
add x y = x + y

id : a -> a
id x = x

addGeneric : (Num a) => a -> a -> a
addGeneric x y = x + y

data Widget = Doohickey | Thingamabob

g : Widget -> String
g Doohickey = "What is this doohickey?"
g Thingamabob = "I've never seen this thingamabob before"

data Vect : Nat -> Type -> Type where
  Nil : Vect Z a
  (::) : a -> Vect k a -> Vect (S k) a

concat : Vect n a -> Vect m a -> Vect (n + m) a
concat [] ys = ys
concat (x :: xs) y = x :: concat xs y
