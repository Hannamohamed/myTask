import 'package:flutter/material.dart';
import 'package:flutter_application_6/NEW/question.dart';
import 'package:flutter_application_6/screen/second.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  final Map categoryMap;
  const FirstPage({super.key, required this.categoryMap});

  @override
  State<StatefulWidget> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int index = 0;
  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.categoryMap["color"],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${index + 1}/${(widget.categoryMap["data"] as List).length}",
                style: TextStyle(fontSize: 20, color: Colors.black)),
            Text(
              (widget.categoryMap["quizName"]),
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Center(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(15),
              height: 130,
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 48),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(236, 229, 229, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Text(widget.categoryMap["data"][index]["question"],
                  style: TextStyle(
                      color: Color.fromRGBO(18, 18, 18, 1), fontSize: 20)),
            ),
          ),
          for (int i = 0;
              i < (widget.categoryMap["data"][index]["answers"] as List).length;
              i++)
            ElevatedButton(
              onPressed: () {
                totalScore = totalScore +
                        widget.categoryMap["data"][index]["answers"][i]["score"]
                    as int;
                if (index + 1 < (widget.categoryMap["data"] as List).length) {
                  setState(() {
                    index++;
                  });
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => SecPage(
                        totalScore: totalScore,
                        totalnumofquestions: index + 1,
                        userName: userName,
                      ),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                  primary: widget.categoryMap["color"]),
              child: Text(
                '${widget.categoryMap["data"][index]["answers"][i]["ans"]}',
                style: TextStyle(
                  color: Color.fromRGBO(18, 18, 18, 1),
                  fontSize: 20,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
