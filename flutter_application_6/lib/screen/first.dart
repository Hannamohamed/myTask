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
  double _questionOpacity = 1.0;
  double _choicesOpacity = 1.0;
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
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              AnimatedOpacity(
                opacity: _questionOpacity,
                duration: Duration(milliseconds: 500),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Text(
                    widget.categoryMap["data"][index]["question"],
                    style: GoogleFonts.pacifico(
                        fontSize: 35, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
                 AnimatedOpacity(
                opacity: _questionOpacity,
                duration: Duration(milliseconds: 500),
                child:
              Text(
                'Your choices is:',
                style: GoogleFonts.pacifico(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),),
              for (int i = 0;
                  i <
                      (widget.categoryMap["data"][index]["answers"] as List)
                          .length;
                  i++)
                AnimatedOpacity(
                  opacity: _choicesOpacity,
                  duration: Duration(milliseconds: 500),
                  child: Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      width:200 ,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            widget.categoryMap["color"],
                          ),
                        ),
                        onPressed: () {
                          totalScore = totalScore +
                              widget.categoryMap["data"][index]["answers"][i]
                                  ["score"] as int;
                          if (index + 1 <
                              (widget.categoryMap["data"] as List).length) {
                            setState(() {
                              _questionOpacity = 0.0;
                              _choicesOpacity = 0.0;
                            });
                            Future.delayed(Duration(milliseconds: 500), () {
                              setState(() {
                                index++;
                                _questionOpacity = 1.0;
                                _choicesOpacity = 1.0;
                              });
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
                        child: Text(
                          (widget.categoryMap["data"][index]["answers"][i]
                              ["ans"]),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
