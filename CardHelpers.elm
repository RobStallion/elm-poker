module CardHelpers exposing (..)

import Types exposing (..)
import List.Extra exposing (group)


handType : List Card -> HandType
handType cardList =
    if isFirstCard10 cardList && straight cardList then
        RoyalFlush
    else if straight cardList && flush cardList then
        StraightFlush
    else if fourOfAKind cardList then
        FourOfAKind
    else if threeOfAKind cardList && pair cardList then
        FullHouse
    else if flush cardList then
        Flush
    else if straight cardList then
        Straight
    else if threeOfAKind cardList then
        ThreeOfAKind
    else if twoPair cardList then
        TwoPair
    else if pair cardList then
        Pair
    else
        HighCard


isFirstCard10 : List Card -> Bool
isFirstCard10 cardList =
    let
        firstCardValue =
            getFirstCard cardList
                |> .value
    in
        firstCardValue == 10


straight : List Card -> Bool
straight cardList =
    let
        ( head, rest ) =
            ( List.take 1 cardList, List.drop 1 cardList )

        headValue =
            getFirstCard head
                |> .value

        straightList =
            List.range headValue <| headValue + 4

        cardListRanks =
            List.map (\card -> card.value) cardList
    in
        straightList == cardListRanks


flush : List Card -> Bool
flush cardList =
    let
        firstcardsuit =
            getFirstCard cardList
                |> .suit
    in
        List.all (\card -> card.suit == firstcardsuit) cardList


fourOfAKind : List Card -> Bool
fourOfAKind =
    xOfAKind 4


threeOfAKind : List Card -> Bool
threeOfAKind =
    xOfAKind 3


pair : List Card -> Bool
pair =
    xOfAKind 2


twoPair : List Card -> Bool
twoPair cardList =
    let
        groupedCards =
            cardList
                |> List.map (\card -> card.value)
                |> List.Extra.group
    in
        List.length groupedCards == 3 && List.any (\list -> List.length list == 2) groupedCards



-- helpers


getFirstCard : List Card -> Card
getFirstCard cardList =
    cardList
        |> List.head
        |> Maybe.withDefault { suit = "", name = "", value = 0, image = "" }


sortHand : List Card -> List Card
sortHand cardList =
    List.sortBy .value cardList


dealHand : List Card -> ( List Card, List Card )
dealHand cardList =
    ( List.take 5 cardList, List.drop 5 cardList )


xOfAKind : Int -> List Card -> Bool
xOfAKind int cardList =
    cardList
        |> List.map (\card -> card.value)
        |> List.Extra.group
        |> List.any (\list -> List.length list == int)
