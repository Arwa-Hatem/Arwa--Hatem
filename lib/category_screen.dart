import 'package:flutter/material.dart';
import 'package:task2/global.dart';
import 'package:task2/quiz_screen.dart';

class categoryscreen extends StatelessWidget {
  categoryscreen({super.key});

  List quizName = [
    "Sport Test",
    "History Test",
    "General Test",
    "Math test",
    "physics test",
    "chemstry"
  ];
  List quizColor = [
    Color.fromARGB(255, 95, 166, 126),
    Color.fromARGB(255, 95, 166, 126),
    Color.fromARGB(255, 95, 166, 126),
    Color.fromARGB(255, 95, 166, 126),
    Color.fromARGB(255, 95, 166, 126),
    Color.fromARGB(255, 95, 166, 126),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 6; i++)
            Expanded(
                child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => quiz_screen(
                      categorymap: database[i],
                    ),
                  ),
                );
              },
              child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                    color: quizColor[i],
                  ),
                  child: Center(
                    child: Text(
                      quizName[i],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  )),
            ))
        ],
      ),
    );
  }
}
