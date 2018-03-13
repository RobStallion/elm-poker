module Types exposing (..)

import Http


type Msg
    = RecieveCards (Result Http.Error (List Card))
    | Shuffle
    | GetShuffledDeck (List Card)
    | Deal
    | CheckHand HandType


type alias Model =
    { deck : List Card
    , remainingCards : List Card
    , hand : List Card
    , handType : HandType
    , players : List Player
    , numPlayers : Int
    }


type alias Player =
    { hand : List Card
    , handType : HandType
    }


type alias Card =
    { suit : String
    , name : String
    , value : Int
    , image : String
    }


type HandType
    = RoyalFlush
    | StraightFlush
    | FourOfAKind
    | FullHouse
    | Flush
    | Straight
    | ThreeOfAKind
    | TwoPair
    | Pair
    | HighCard
    | NoHand
