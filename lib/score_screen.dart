import 'package:flutter/material.dart';
import 'package:task2/opening_screen.dart';

import 'global.dart';

class score_screen extends StatelessWidget {
  final int finalscore;
  final int numque;

  score_screen({super.key, required this.numque, required this.finalscore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RichText(
                  text: TextSpan(
                      text: "Hello ",
                      style: TextStyle(
                          fontSize: 45,
                          color: Colors.black,
                          fontFamily: 'DancingScript'),
                      children: [
                    TextSpan(
                        text: "${usernameController.text} \n",
                        style: TextStyle(
                            color: Color.fromARGB(255, 132, 186, 116),
                            fontSize: 40,
                            fontFamily: 'DancingScript')),
                    TextSpan(text: "your score is "),
                    TextSpan(
                        text: "$finalscore/$numque",
                        style: TextStyle(
                            color: Color.fromARGB(255, 156, 211, 140),
                            fontSize: 45,
                            fontFamily: 'DancingScript')),
                  ])),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => OpeningScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text(
                  'Reset Quiz',
                  style: TextStyle(fontFamily: 'pacifico', fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    elevation: 15,
                    shadowColor: const Color.fromARGB(255, 86, 86, 85),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fixedSize: const Size(250, 80)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
