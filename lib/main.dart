import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() {
  runApp(Myfirstapp());
}

class Myfirstapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyfirstAppstate();
  }
}

class MyfirstAppstate extends State<Myfirstapp> {
  var questionindex = 0;

  void answer() {
    setState(() {
      questionindex = questionindex + 1;
    });

    print("bad pokemon");
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questiontext': 'who is your favorite pokemon?',
        'answertext': ['bulbasaur', 'pikachu', 'charmander', 'pidgeot']
      },
      {
        'questiontext': 'who is your favorite trainer?',
        'answertext': ['ash', 'brock', 'misty', 'team rocket']
      },
      {
        'questiontext': 'do you want to win the pokemon league?',
        'answertext': ['yes', 'no']
      },
      {
        'questiontext': 'hehe gonna catch them all',
        'answertext': ['yes lets go', 'sure we will', 'godamnit']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("pokemon")),
        body: Column(
          children: [
            Question(questions[questionindex]['questiontext']),
            ...(questions[questionindex]['answertext'] as List<String>)
                .map((answerbuttons) {
              return Answers(answer, answerbuttons);
            }).toList()
          ],
        ),
      ),
    );
  }
}
