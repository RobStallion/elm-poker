module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Types exposing (..)
import Request exposing (getCardsFromApi)
import Random exposing (generate)
import Random.List exposing (shuffle)
import HtmlHelpers
import CardHelpers


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }


initialModel : Model
initialModel =
    { deck = []
    , remainingCards = []
    , hand = []
    , handType = NoHand
    }


init : ( Model, Cmd Msg )
init =
    ( initialModel, getCardsFromApi )


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick DealHand ] [ text "Deal hand" ]
        , div [] <| HtmlHelpers.makeCardNodes model.hand
        , button [ onClick <| CheckHand <| CardHelpers.handType <| CardHelpers.sortHand model.hand ] [ text "Check hand" ]
        , h1 [] [ text <| toString model.handType ]
        , button [ onClick Reshuffle ] [ text "Reshuffle deck" ]
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        RecieveCards (Ok deck) ->
            ( model, generate GetShuffledDeck (shuffle deck) )

        RecieveCards (Err err) ->
            ( model, Cmd.none )

        GetShuffledDeck shuffledDeck ->
            ( { model | deck = shuffledDeck }, Cmd.none )

        DealHand ->
            let
                ( hand, remainingCards ) =
                    CardHelpers.dealHand model.deck
            in
                ( { model | hand = hand, remainingCards = remainingCards }, Cmd.none )

        CheckHand hand ->
            ( { model | handType = hand }, Cmd.none )

        Reshuffle ->
            ( { model | handType = NoHand, hand = [], remainingCards = [] }, generate GetShuffledDeck (shuffle model.deck) )
