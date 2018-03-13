module CardHelpersTest exposing (..)

import Expect
import Helpers.Card as Card
import Helpers.HandTypes as HandTypes
import Test exposing (..)
import Types exposing (..)


hands =
    HandTypes.types


suite : Test
suite =
    describe "Testing CardHelpers"
        [ test "2 + 2 is 4" (\_ -> 2 + 2 |> Expect.equal 4)
        , test "minus 1 that's 3 quick maths" (\_ -> 4 - 1 |> Expect.equal 3)
        , describe "testing handType function for"
            [ test "Royal Flush" (\_ -> Card.handType hands.royalFlush |> Expect.equal RoyalFlush)
            , test "Straight Flush" (\_ -> Card.handType hands.straightFlush |> Expect.equal StraightFlush)
            , test "Four of a kind" (\_ -> Card.handType hands.fourOfAKind |> Expect.equal FourOfAKind)
            , test "Full house" (\_ -> Card.handType hands.fullHouse |> Expect.equal FullHouse)
            , test "Flush" (\_ -> Card.handType hands.flush |> Expect.equal Flush)
            , test "Straight" (\_ -> Card.handType hands.straight |> Expect.equal Straight)
            , test "Three of a kind" (\_ -> Card.handType hands.threeOfAKind |> Expect.equal ThreeOfAKind)
            , test "Two pair" (\_ -> Card.handType hands.twoPair |> Expect.equal TwoPair)
            , test "Pair" (\_ -> Card.handType hands.pair |> Expect.equal Pair)
            , test "High card" (\_ -> Card.handType hands.highCard |> Expect.equal HighCard)
            ]
        ]
