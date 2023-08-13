import 'package:flutter/material.dart';
import 'package:task2/opening_screen.dart';

class score_screen extends StatelessWidget {
  const score_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            const Text(
              "Hello, Maha Your Score is 5/10",
              style: TextStyle(fontSize: 40, fontFamily: 'pacifico'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const OpeningScreen(),
                  ),
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
          ],
        ),
      ),
    );
  }
}
