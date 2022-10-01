module Hof exposing (main)
import Html exposing (Html)


zipWith : (a -> b -> c) -> List a -> List b -> List c
zipWith f list1 list2 = case (list1, list2) of
    (_, []) -> []
    ([], _) -> []
    (x::xs, y::ys) -> f x y :: zipWith f xs ys
    
list = zipWith max
value = list [4,2,5,6] [2,6,2,3]


main : Html msg
main =
  Html.text <| Debug.toString <| value
