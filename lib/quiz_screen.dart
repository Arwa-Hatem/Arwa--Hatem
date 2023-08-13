import 'package:flutter/material.dart';
import 'package:task2/score_screen.dart';

class quiz_screen extends StatelessWidget {
  quiz_screen({super.key});
  List quizName = ["Paris", "London", "Moscow", "Roma"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 89, 144, 104),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("1/10"), Text("General Test"), Icon(Icons.quiz)],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              alignment: const Alignment(-1, -1),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(right: 20, left: 20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 239, 226),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 176, 191, 176),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(5, 5)),
                  ]),
              child: const Column(
                children: [
                  Text(
                    "Question 1 :",
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 20,
                        decoration: TextDecoration.underline),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "What is the capital of France ?",
                    style: TextStyle(fontFamily: 'Pacifico', fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "choices is :",
            style: TextStyle(fontFamily: 'Pacifico', fontSize: 25),
          ),
          for (int i = 0; i < 4; i++)
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const score_screen(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 223, 239, 226),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 176, 191, 176),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(5, 5)),
                      ]),
                  child: Center(
                      child: Text(
                    quizName[i],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Pacifico',
                    ),
                  )),
                )),
        ],
      ),
    );
  }
}
