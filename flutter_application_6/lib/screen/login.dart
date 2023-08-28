import 'package:flutter/material.dart';
import 'package:flutter_application_6/NEW/question.dart';

import 'package:flutter_application_6/screen/quiz.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, // the width of the device
        height: MediaQuery.of(context).size.height, // hight of the device

        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/down.jpg',
                ),
                fit: BoxFit.cover)),

        // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            /// first widget
            ///

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.14,
            ),

            if (MediaQuery.of(context).orientation == Orientation.portrait)
              Image.asset(
                "images/download90.jpg",
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.59,
              ),

            if (MediaQuery.of(context).orientation == Orientation.landscape)
              Image.asset(
                "images/download90.jpg",
                width: MediaQuery.of(context).size.width * 0.12,
                height: MediaQuery.of(context).size.height * 0.59,
              ),

            /// second widget :
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 48),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 30,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          controller: userName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            if (value.trim().length < 8) {
                              return 'Username must be at least 8 characters in length';
                            }
                            if (value[0] != value[0].toUpperCase()) {
                              return ' first letter must be upper case';
                            }

                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Username',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (!RegExp(r'[!@#\$%^&(),.?":{}|<>]')
                                .hasMatch(value)) {
                              return 'must have special character ';
                            }
                            if (!RegExp(r'\d').hasMatch(value)) {
                              return 'must have number';
                            }
                            if (value.trim().length < 9) {
                              return 'must be at least 9 characters in length';
                            }
                            // Return null if the entered password is valid
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your email address';
                            }
                            // Check if the entered email has the right format
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            // Return null if the entered email is valid
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'E-mail',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'New to Quiz App?',
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Color.fromRGBO(12, 157, 10, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(3, 247, 125, 1),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 30),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Processing Data'),
                                        duration: Duration(seconds: 1),
                                      ),
                                    );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            QuizAppli(),
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  ' log in ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(241, 241, 236, 1)),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Image.asset('images/oo.png'),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(
                                'Use touch-ID',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Remember Me',
                                style: TextStyle(
                                  color: Color.fromRGBO(12, 157, 10, 1),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forget password?',
                                style: TextStyle(
                                  color: Color.fromRGBO(12, 157, 10, 1),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
