import 'package:flutter/material.dart';
import 'package:flutter_application_6/screen/second.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'General Test',
            style: TextStyle(
              color: Color.fromRGBO(236, 234, 234, 1),
              fontSize: 25,
            ),
          ),
          backgroundColor: const Color.fromRGBO(198, 1, 195, 1),
        ),
        body: Column(
          children: [
            SizedBox(height: 15),
            Center(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                height: 150,
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 48),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(236, 229, 229, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Text(
                  'QUESTION 1 :\nwhat is the capital of france ?',
                  style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                          color: Color.fromRGBO(18, 18, 18, 1), fontSize: 20)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'choise is: ',
                style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                        color: Color.fromRGBO(18, 18, 18, 1), fontSize: 20)),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                height: 80,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(236, 229, 229, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SecPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Paris',
                    style: GoogleFonts.pacifico(
                        textStyle: TextStyle(
                            color: Color.fromRGBO(18, 18, 18, 1),
                            fontSize: 20)),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                height: 80,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(236, 229, 229, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SecPage(),
                      ),
                    );
                  },
                  child: Text(
                    'London',
                    style: GoogleFonts.pacifico(
                        textStyle: TextStyle(
                            color: Color.fromRGBO(18, 18, 18, 1),
                            fontSize: 20)),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                height: 80,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(236, 229, 229, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SecPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Mosco',
                    style: GoogleFonts.pacifico(
                        textStyle: TextStyle(
                            color: Color.fromRGBO(18, 18, 18, 1),
                            fontSize: 20)),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                height: 80,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(236, 229, 229, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SecPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Rome',
                    style: GoogleFonts.pacifico(
                        textStyle: TextStyle(
                            color: Color.fromRGBO(18, 18, 18, 1),
                            fontSize: 20)),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
