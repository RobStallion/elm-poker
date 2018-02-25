module HandTypes exposing (types)


types =
    { royalFlush =
        [ { suit = "Clubs"
          , name = "10"
          , value = 10
          , image = ""
          }
        , { suit = "Clubs"
          , name = "Jack"
          , value = 11
          , image = ""
          }
        , { suit = "Clubs"
          , name = "Queen"
          , value = 12
          , image = ""
          }
        , { suit = "Clubs"
          , name = "King"
          , value = 13
          , image = ""
          }
        , { suit = "Clubs"
          , name = "Ace"
          , value = 14
          , image = ""
          }
        ]
    , straightFlush =
        [ { suit = "Clubs"
          , name = "9"
          , value = 9
          , image = ""
          }
        , { suit = "Clubs"
          , name = "10"
          , value = 10
          , image = ""
          }
        , { suit = "Clubs"
          , name = "Jack"
          , value = 11
          , image = ""
          }
        , { suit = "Clubs"
          , name = "Queen"
          , value = 12
          , image = ""
          }
        , { suit = "Clubs"
          , name = "King"
          , value = 13
          , image = ""
          }
        ]
    , fourOfAKind =
        [ { suit = "Clubs"
          , name = "9"
          , value = 9
          , image = ""
          }
        , { suit = "Hearts"
          , name = "9"
          , value = 9
          , image = ""
          }
        , { suit = "Diamonds"
          , name = "9"
          , value = 9
          , image = ""
          }
        , { suit = "Spades"
          , name = "9"
          , value = 9
          , image = ""
          }
        ]
    , fullHouse =
        [ { suit = "Clubs"
          , name = "9"
          , value = 9
          , image = ""
          }
        , { suit = "Hearts"
          , name = "9"
          , value = 9
          , image = ""
          }
        , { suit = "Diamonds"
          , name = "9"
          , value = 9
          , image = ""
          }
        , { suit = "Spades"
          , name = "8"
          , value = 8
          , image = ""
          }
        , { suit = "Hearts"
          , name = "8"
          , value = 8
          , image = ""
          }
        ]
    , flush =
        [ { suit = "Clubs"
          , name = "9"
          , value = 9
          , image = ""
          }
        , { suit = "Clubs"
          , name = "4"
          , value = 4
          , image = ""
          }
        , { suit = "Clubs"
          , name = "2"
          , value = 2
          , image = ""
          }
        , { suit = "Clubs"
          , name = "8"
          , value = 8
          , image = ""
          }
        , { suit = "Clubs"
          , name = "3"
          , value = 3
          , image = ""
          }
        ]
    , straight =
        [ { suit = "Diamonds"
          , name = "1"
          , value = 1
          , image = ""
          }
        , { suit = "Clubs"
          , name = "2"
          , value = 2
          , image = ""
          }
        , { suit = "Clubs"
          , name = "3"
          , value = 3
          , image = ""
          }
        , { suit = "Clubs"
          , name = "4"
          , value = 4
          , image = ""
          }
        , { suit = "Clubs"
          , name = "5"
          , value = 5
          , image = ""
          }
        ]
    , threeOfAKind =
        [ { suit = "Clubs"
          , name = "9"
          , value = 9
          , image = ""
          }
        , { suit = "Hearts"
          , name = "9"
          , value = 9
          , image = ""
          }
        , { suit = "Diamonds"
          , name = "9"
          , value = 9
          , image = ""
          }
        ]
    , twoPair =
        [ { suit = "Diamonds"
          , name = "2"
          , value = 2
          , image = ""
          }
        , { suit = "Clubs"
          , name = "2"
          , value = 2
          , image = ""
          }
        , { suit = "Diamonds"
          , name = "3"
          , value = 3
          , image = ""
          }
        , { suit = "Clubs"
          , name = "3"
          , value = 3
          , image = ""
          }
        , { suit = "Clubs"
          , name = "5"
          , value = 5
          , image = ""
          }
        ]
    , pair =
        [ { suit = "Diamonds"
          , name = "2"
          , value = 2
          , image = ""
          }
        , { suit = "Clubs"
          , name = "2"
          , value = 2
          , image = ""
          }
        ]
    , highCard =
        [ { suit = "Diamonds"
          , name = "2"
          , value = 2
          , image = ""
          }
        , { suit = "Clubs"
          , name = "3"
          , value = 3
          , image = ""
          }
        , { suit = "Diamonds"
          , name = "5"
          , value = 5
          , image = ""
          }
        , { suit = "Clubs"
          , name = "7"
          , value = 7
          , image = ""
          }
        , { suit = "Clubs"
          , name = "9"
          , value = 9
          , image = ""
          }
        ]
    }
