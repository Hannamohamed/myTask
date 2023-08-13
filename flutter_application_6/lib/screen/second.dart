import 'package:flutter/material.dart';
import 'package:flutter_application_6/main.dart';
import 'package:google_fonts/google_fonts.dart';

class SecPage extends StatelessWidget {
  const SecPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Row(
            children: [
              Center(
                child: Text(
                  '  Hello ,',
                  style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                          color: Color.fromRGBO(17, 17, 17, 1), fontSize: 50)),
                ),
              ),
              Center(
                child: Text(
                  'Yasmin',
                  style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                          color: Color.fromRGBO(158, 19, 223, 1),
                          fontSize: 50)),
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              'Your Score 1/1',
              style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                      color: Color.fromRGBO(17, 17, 17, 1), fontSize: 50)),
            ),
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
                  textStyle: TextStyle(color: Color(0xFFDDD8D8), fontSize: 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
