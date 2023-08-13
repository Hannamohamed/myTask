import 'package:flutter/material.dart';
import 'package:flutter_application_6/screen/first.dart';

class QuizAppli extends StatelessWidget {
  QuizAppli({super.key});

  List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [Colors.blue, Colors.red, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
            Expanded(
              child: Container(
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const FirstPage(),
                        ),
                      );
                    },
                    child: Text(
                      quizName[i],
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: quizColor[i],
                    border: Border.all(width: 1, color: Colors.black)),
              ),
            ),
        ],
      ),
    );
  }
}
