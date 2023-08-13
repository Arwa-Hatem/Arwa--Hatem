import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task2/category_screen.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});
  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.only(top: 3, bottom: 10),
            child: Image.asset(
              "images/cartoon.png",
              height: MediaQuery.of(context).size.height * 0.2,
            ),
          ),
          const Spacer(),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 237, 237, 232),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            height: MediaQuery.of(context).size.height * 0.6,
            // width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Username",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.person),
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off),
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'New to Quizz app?',
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          '  Register',
                          style: TextStyle(color: Colors.green),
                        )),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => CategoryScreen(),
                      ),
                    );
                  },
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      elevation: 15,
                      shadowColor: const Color.fromARGB(255, 86, 86, 85),
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: const Size(150, 10)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.fingerprint,
                  size: 50,
                  color: Colors.blue,
                ),
                const Text(
                  "Use Touch ID",
                  style: TextStyle(color: Color.fromARGB(255, 142, 141, 141)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                        value: checkboxvalue,
                        activeColor: Colors.green,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkboxvalue = newValue!;
                          });
                        }),
                    const Text("Remember me"),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget password?',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
