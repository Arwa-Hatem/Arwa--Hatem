import 'package:flutter/material.dart';
import 'package:task2/login_screen.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen>
    with TickerProviderStateMixin {
  late AnimationController _slidelogocontroller;
  late AnimationController _fadetextcontroller;
  @override
  void initState() {
    super.initState();
    _slidelogocontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _fadetextcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _slidelogocontroller.forward();
    _fadetextcontroller.forward();
  }

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
              padding: const EdgeInsets.only(left: 110, bottom: 10),
              child: SlideTransition(
                position: Tween<Offset>(begin: Offset(0, -1), end: Offset(0, 0))
                    .animate(_slidelogocontroller),
                child: Image.asset(
                  "images/quizz.png",
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
            ),
            FadeTransition(
              opacity: _fadetextcontroller,
              child: Column(
                children: [
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
                ],
              ),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => login_screen(),
                    ),
                  );
                },
                child: const Text(
                  "Start",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
