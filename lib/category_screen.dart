import 'package:flutter/material.dart';
import 'package:task2/quiz_screen.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [
    Color.fromARGB(255, 51, 195, 118),
    Color.fromARGB(255, 95, 166, 126),
    Color.fromARGB(255, 40, 141, 74)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
            Expanded(
                child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => quiz_screen(),
                  ),
                );
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
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
