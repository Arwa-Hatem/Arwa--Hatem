import 'package:flutter/material.dart';
import 'package:task2/global.dart';
import 'package:task2/score_screen.dart';

class quiz_screen extends StatefulWidget {
  final Map categorymap;
  quiz_screen({
    super.key,
    required this.categorymap,
  });

  @override
  State<quiz_screen> createState() => _quiz_screenState();
}

class _quiz_screenState extends State<quiz_screen>
    with SingleTickerProviderStateMixin {
  int index = 0;
  int score = 0;
  late AnimationController _fadetextcontroller;
  @override
  void initState() {
    // TODO: implement initState

    _fadetextcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _fadetextcontroller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadetextcontroller,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 89, 144, 104),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "${index + 1}/${(widget.categorymap["data"] as List).length}"),
              Text(widget.categorymap["CategoryName"]),
              Icon(Icons.quiz)
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
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
                  child: Column(
                    children: [
                      Text(
                        "Question ${index + 1} :",
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 20,
                            decoration: TextDecoration.underline),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.categorymap["data"][index]["question"],
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
              for (int i = 0;
                  i < (widget.categorymap["data"][index]["answers"]).length;
                  i++)
                GestureDetector(
                    onTap: () {
                      score += widget.categorymap["data"][index]["answers"][i]
                          ["score"] as int;

                      if (index + 1 <
                          (widget.categorymap["data"] as List).length) {
                        setState(() {
                          index++;
                        });
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => score_screen(
                              finalscore: score,
                              numque: index + 1,
                            ),
                          ),
                        );
                      }
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
                        widget.categorymap["data"][index]["answers"][i]["ans"],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Pacifico',
                        ),
                      )),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
