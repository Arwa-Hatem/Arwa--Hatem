import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Container(
              padding: EdgeInsets.only(left: 110, bottom: 10),
              child: Image.asset(
                "images/quizz.png",
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
            const Text(
              "ITI Quiz app",
              style: TextStyle(
                color: Colors.yellow,
                height: -4,
                fontSize: 30,
                fontFamily: 'Pacifico',
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            const Text(
              "We are creative, enjoy our app",
              style: TextStyle(
                color: Colors.white,
                height: -6,
                fontSize: 29,
                fontFamily: 'DancingScript',
              ),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Start",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 150),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
