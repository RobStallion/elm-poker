module Helpers.Html exposing (..)

import Types exposing (..)
import Html exposing (..)
import Html.Attributes exposing (class, style)
import Helpers.Card exposing (sortHand)


makeCardNodes : List Card -> List (Html Msg)
makeCardNodes listOfCards =
    List.map
        (\card ->
            div
                [ class "bg-center contain w5 inline-flex"
                , style
                    [ ( "background-image", "url(" ++ card.image ++ ")" )
                    , ( "height", "200px" )
                    ]
                ]
                []
        )
    <|
        sortHand listOfCards
