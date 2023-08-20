import 'package:flutter/material.dart';

List<Map<String, dynamic>> database = [
  {
    "quizName": "Sport Test",
    "color": Colors.blue,
    "data": [
      {
        "question": "how many player in football team?",
        "answers": [
          {"ans": "9", "score": 0},
          {"ans": "10", "score": 0},
          {"ans": "11", "score": 1},
          {"ans": "12", "score": 0},
        ]
      },
      {
        "question": "Which sport is played with a shuttlecock and rackets?",
        "answers": [
          {"ans": "Tennis", "score": 0},
          {"ans": "Badminton", "score": 1},
          {"ans": "football", "score": 0},
        ]
      },
      {
        "question": "which sport does a player score a hat-trick?",
        "answers": [
          {"ans": "basketball", "score": 0},
          {"ans": "soccer", "score": 1},
          {"ans": "football", "score": 0},
          {"ans": "France", "score": 0},
        ]
      },
      {
        "question": "Which sport is played on a diamond-shaped field?",
        "answers": [
          {"ans": "Baseball", "score": 1},
          {"ans": "Golf", "score": 0},
          {"ans": "Field Hockey", "score": 0},
          {"ans": "football", "score": 0},
        ]
      },
      {
        "question": "Which sport is played with a small ball and a long stick?",
        "answers": [
          {"ans": "Golf", "score": 0},
          {"ans": " Polo", "score": 0},
          {"ans": "football", "score": 0},
          {"ans": "lacrosse", "score": 1},
        ]
      },
    ]
  },
  {
    "quizName": "History Test",
    "color": Colors.red,
    "data": [
      {
        "question": "Which event marked the end of World War II?",
        "answers": [
          {"ans": "D-Day", "score": 0},
          {"ans": "Pearl Harbor attack", "score": 0},
          {"ans": "Atomic bombings of Hiroshima and Nagasaki", "score": 1},
        ]
      },
      {
        "question": "Who is credited with painting the Mona Lisa?",
        "answers": [
          {"ans": "Vincent van Gogh", "score": 0},
          {"ans": "Pablo Picasso", "score": 0},
          {"ans": "Leonardo da Vinci", "score": 1},
        ]
      },
      {
        "question": "Who was the first President of the United States?",
        "answers": [
          {"ans": "George Washington", "score": 1},
          {"ans": " Abraham Lincoln", "score": 0},
          {"ans": "Thomas Jefferson", "score": 0},
        ]
      },
    ]
  },
  {
    "quizName": "General Test",
    "color": Colors.yellow,
    "data": [
      {
        "question": "Which planet is known as the Red Planet?",
        "answers": [
          {"ans": "Saturn", "score": 0},
          {"ans": "Venus", "score": 0},
          {"ans": "Jupiter", "score": 0},
          {"ans": "Mars", "score": 1},
        ]
      },
      {
        "question": "What is the capital city of Australia?",
        "answers": [
          {"ans": "Canberra", "score": 1},
          {"ans": "Perth", "score": 0},
          {"ans": " Sydney", "score": 0},
          {"ans": "Madrid", "score": 0},
        ]
      },
    ]
  },
  {
    "quizName": "Math Test",
    "color": Colors.pink,
    "data": [
      {
        "question":
            "What is the value of π (pi) rounded to two decimal places?",
        "answers": [
          {"ans": "3.14", "score": 1},
          {"ans": "1.5", "score": 0},
          {"ans": "2.0", "score": 0},
          {"ans": "14.9", "score": 0},
        ],
      },
      {
        "question": "What is the square root of 64?",
        "answers": [
          {"ans": "24", "score": 0},
          {"ans": "20", "score": 0},
          {"ans": "1", "score": 0},
          {"ans": "8", "score": 1},
        ],
      }
    ],
  },
  {
    "quizName": "IQ Test",
    "color": Colors.purple,
    "data": [
      {
        "question": "What is 20% of 80?",
        "answers": [
          {"ans": "9", "score": 0},
          {"ans": "10", "score": 0},
          {"ans": "16", "score": 1},
          {"ans": "12", "score": 0},
        ]
      },
      {
        "question": "What is the result of 7 multiplied by 3?",
        "answers": [
          {"ans": "9", "score": 0},
          {"ans": "10", "score": 0},
          {"ans": "21", "score": 1},
          {"ans": "12", "score": 0},
        ]
      },
      {
        "question": "What is the value of 2 + 2?",
        "answers": [
          {"ans": "9", "score": 0},
          {"ans": "4", "score": 1},
          {"ans": "11", "score": 0},
          {"ans": "12", "score": 0},
        ]
      },
      {
        "question":
            "If a triangle has angles measuring 30°, 60°, and 90°, what type of triangle is it?",
        "answers": [
          {"ans": "Equilateral triangle", "score": 0},
          {"ans": "Isosceles triangle", "score": 0},
          {"ans": "Right triangle", "score": 1},
        ]
      },
      {
        "question": "What is the square root of 144?",
        "answers": [
          {"ans": "10", "score": 0},
          {"ans": "12", "score": 1},
          {"ans": "50", "score": 0},
          {"ans": "22", "score": 0},
        ],
      }
    ],
  },
  {
    "quizName": "Music Test",
    "color": Colors.green,
    "data": [
      {
        "question": "Who is known as the King of Pop?",
        "answers": [
          {"ans": "Michael Jackson", "score": 1},
          {"ans": "Elvis Presley", "score": 0},
        ]
      },
      {
        "question": "Which instrument is commonly associated with jazz music?",
        "answers": [
          {"ans": "piano", "score": 0},
          {"ans": "Saxophone", "score": 1},
        ],
      }
    ],
  },
];
TextEditingController userName = TextEditingController();
