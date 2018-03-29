module Helpers.Html exposing (..)

import Types exposing (..)
import Html exposing (..)
import Html.Attributes exposing (class, style)
import Helpers.Card exposing (sortHand)


makeCardNodes : List Player -> List (Html Msg)
makeCardNodes players =
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
        sortHand players
