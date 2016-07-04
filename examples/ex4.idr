module Ex4

{-
  Functor
  map : (Functor f) => (a -> b) -> f a -> f b

  ----------------------------------------------------------------------------

  Law of Composition
  ==================

  Given two functions, `g` and `h`, and some functor `f` the following must hold

  map (g . h) f = map (g (map h f))
-}

functorComp : Functor f => (h : a -> b) ->
                           (g : b -> c) ->
                           (functor: f a) ->
                           map (g . h) functor = map g (map h functor)
