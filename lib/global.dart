import 'package:flutter/material.dart';

List<Map<String, dynamic>> database = [
  {
    "CategoryName": "Sport test",
    "color": Color.fromARGB(255, 51, 195, 118),
    "data": [
      {
        "question":
            "The term “Tee” is used commonly in which among the following sports",
        "answers": [
          {"ans": " Tennis", "score": 0},
          {"ans": "Polo", "score": 0},
          {"ans": "  Golf", "score": 1},
          {"ans": " Racing", "score": 0},
        ]
      },
      {
        "question":
            "National Football Museum” which keeps FIFA collection is located in which country?",
        "answers": [
          {"ans": "Switzerland", "score": 0},
          {"ans": "Canada", "score": 0},
          {"ans": "England", "score": 1},
          {"ans": "France", "score": 0}
        ],
      },
      {
        "question": "In which sports is the participant called pugilist?",
        "answers": [
          {"ans": " Sprinter", "score": 0},
          {"ans": " Boxing", "score": 1},
          {"ans": "Wrestling", "score": 0},
          {"ans": " Javelin throw", "score": 0}
        ],
      }
    ],
  },
  {
    "CategoryName": "History test",
    "color": Color.fromARGB(255, 95, 166, 126),
    "data": [
      {
        "question":
            " Which U.S. President was the first to live in the White House?",
        "answers": [
          {"ans": "George Washington", "score": 0},
          {"ans": "John Adams", "score": 1},
          {"ans": " Thomas Jefferson", "score": 0},
          {"ans": " James Madison", "score": 0},
        ]
      },
      {
        "question": "In which country was Adolf Hitler born?",
        "answers": [
          {"ans": "France", "score": 0},
          {"ans": "Germany", "score": 0},
          {"ans": "Austria", "score": 1},
          {"ans": "Austria", "score": 0}
        ],
      },
      {
        "question":
            "By the king of which country was the Magna Carta published?",
        "answers": [
          {"ans": " France", "score": 0},
          {"ans": " Austria", "score": 0},
          {"ans": "Italy", "score": 0},
          {"ans": " England", "score": 1}
        ],
      }
    ],
  },
  {
    "CategoryName": "General test",
    "color": Color.fromARGB(255, 40, 141, 74),
    "data": [
      {
        "question": "The study of sound is called?",
        "answers": [
          {"ans": "soundics", "score": 0},
          {"ans": "vibronomy", "score": 0},
          {"ans": " acoustonomy", "score": 0},
          {"ans": " acoustics", "score": 1},
        ]
      },
      {
        "question": "What is the capital city of Albania ?",
        "answers": [
          {"ans": "Tirana", "score": 1},
          {"ans": "Thimphu", "score": 0},
          {"ans": "Sofia", "score": 0},
        ],
      },
      {
        "question": "what is the currency Japan",
        "answers": [
          {"ans": " Dirham", "score": 0},
          {"ans": " Kronor", "score": 0},
          {"ans": "Yuan", "score": 0},
          {"ans": " Yen", "score": 1}
        ],
      }
    ],
  },
  {
    "CategoryName": "Math test",
    "color": Color.fromARGB(255, 51, 195, 118),
    "data": [
      {
        "question": " What is three fifth of 100?",
        "answers": [
          {"ans": " 3", "score": 0},
          {"ans": "5", "score": 0},
          {"ans": "  20", "score": 0},
          {"ans": " 60", "score": 1},
        ]
      },
      {
        "question": " What is the remainder of 21 divided by 7?",
        "answers": [
          {"ans": "3", "score": 0},
          {"ans": "5", "score": 0},
          {"ans": "1", "score": 0},
          {"ans": "Non of these", "score": 1}
        ],
      },
    ],
  },
  {
    "CategoryName": "Physics test",
    "color": Color.fromARGB(255, 51, 195, 118),
    "data": [
      {
        "question": "Iron is attracted by magnets?",
        "answers": [
          {"ans": " True", "score": 1},
          {"ans": "False", "score": 0},
        ]
      },
      {
        "question": "A person who studies physics is known as a?",
        "answers": [
          {"ans": "Physicist", "score": 1},
          {"ans": "Chemist", "score": 0},
          {"ans": "Scientist", "score": 0},
        ],
      },
      {
        "question": "What is the earth’s primary source of energy?",
        "answers": [
          {"ans": " Heat", "score": 0},
          {"ans": " Electricity", "score": 0},
          {"ans": "The Sun", "score": 1},
          {"ans": " Solar System", "score": 0}
        ],
      }
    ],
  },
  {
    "CategoryName": "Chemistry test",
    "color": Color.fromARGB(255, 51, 195, 118),
    "data": [
      {
        "question": "What is the chemical symbol for gold?",
        "answers": [
          {"ans": " Au", "score": 1},
          {"ans": "Ag", "score": 0},
          {"ans": "  Al", "score": 0},
          {"ans": " Fe", "score": 0},
        ]
      },
      {
        "question":
            "Which gas is most commonly found in the Earth's atmosphere?",
        "answers": [
          {"ans": "Oxygen", "score": 0},
          {"ans": "Nitrogen", "score": 1},
          {"ans": "Hydrogen", "score": 0},
        ],
      },
    ],
  },
];
TextEditingController usernameController = TextEditingController();
