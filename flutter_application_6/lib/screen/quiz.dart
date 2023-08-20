import 'package:flutter/material.dart';
import 'package:flutter_application_6/NEW/question.dart';
import 'package:flutter_application_6/open.dart';
import 'package:flutter_application_6/screen/first.dart';

class QuizAppli extends StatelessWidget {
  QuizAppli({super.key});
  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("WAIT A MINUTE !"),
          content: Text("Are you sure you want to close the app?"),
          actions: [
            Row(
              children: [
                TextButton(
                  child: Text("YES"),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const OpenScreen(),
                      ),
                    );
                  },
                ),
                TextButton(
                  child: Text("NO"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  List quizName = [
    "Sport Test",
    "History Test",
    "General Test",
    "Math Test",
    "IQ Test",
    "Music Test",
  ];
  List quizColor = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.pink,
    Colors.purple,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        leading: IconButton(
            onPressed: () {
              showAlertDialog(context);
            },
            icon: Icon(Icons.backspace)),
      )),
      body: Column(
        children: [
          for (int i = 0; i < 6; i++)
            Expanded(
              child: Container(
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => FirstPage(
                            categoryMap: database[i],
                          ),
                        ),
                      );
                    },
                    child: Text(
                      quizName[i],
                      style: const TextStyle(fontSize: 30, color: Colors.black),
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
