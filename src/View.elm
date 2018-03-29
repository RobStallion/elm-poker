module View exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Helpers.Html as Html exposing (..)
import Helpers.Card as Card exposing (..)
import Types exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Deal ] [ text "Deal" ]
        , div [] <| Html.makeCardNodes model.players
        , button [ onClick <| CheckHand <| Card.handType <| Card.sortHand model.players ] [ text "Check hand" ]
        , h1 [] [ text <| toString model.players ]
        , button [ onClick Shuffle ] [ text "Reshuffle deck" ]
        ]
