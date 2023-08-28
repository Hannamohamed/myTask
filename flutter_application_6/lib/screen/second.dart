import 'package:flutter/material.dart';
import 'package:flutter_application_6/NEW/question.dart';
import 'package:flutter_application_6/main.dart';
import 'package:google_fonts/google_fonts.dart';

class SecPage extends StatefulWidget {
  final int totalScore;
  final int totalnumofquestions;
  final TextEditingController userName;
  SecPage(
      {super.key,
      required this.totalScore,
      required this.totalnumofquestions,
      required this.userName});
  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  void dispose() {
    widget.userName.clear(); // Clear the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  '  Hello ,',
                  style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                          color: Color.fromRGBO(17, 17, 17, 1), fontSize: 40)),
                ),
              ),
              Center(
                child: Text(
                  '${userName.text}',
                  style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                          color: Color.fromRGBO(158, 19, 223, 1),
                          fontSize: 18)),
                ),
              ),
            ],
          ),
          Center(
            child: Text('${widget.totalScore}/${widget.totalnumofquestions}',
                style: TextStyle(
                    color: Color.fromRGBO(17, 17, 17, 1), fontSize: 40)),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const MyApp(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(158, 19, 233, 1)),
              child: Text(
                'Reset quiz',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(color: Color(0xFFDDD8D8), fontSize: 40),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
