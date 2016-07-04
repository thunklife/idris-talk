module Ex2

-- This is a function that calculates a type
-- In this example it determines if the type
-- is a single Nat (natural number) or a List Nat
ListType : (singleton : Bool) -> Type
ListType False = List Nat
ListType True = Nat

-- Here, the type of the second argument is dependent
-- the first. If true it will be a single Nat, otherwise
-- it will be a List Nat
-- The result of this function will either be the singleton
-- Or the sum of the list

sumList : (singleton : Bool) -> ListType singleton -> Nat
sumList False [] = 0
sumList False xs = sum xs
sumList True x = x
