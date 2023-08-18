import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task2/category_screen.dart';

class login_screen extends StatefulWidget {
  login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool _pass = true;

  final GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  String? _Username(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your username';
    }
    if (value.length < 8) {
      return 'Username should have at least 8 characters';
    }
    if (value[0] != value[0].toUpperCase()) {
      return 'Username should start with an uppercase letter';
    }
  }

  String? _Email(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your email';
    }
    if (!value.contains('@') ||
        !value.contains('.') ||
        !value.contains('com')) {
      return 'Invalid email format';
    }
  }

  String? _Password(String? value) {
    if (value!.isEmpty) {
      return 'please enter your password';
    }

    final RegExp regx = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{10,}$');

    if (!regx.hasMatch(value)) {
      return 'invalid password';
    }
  }

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
            height: MediaQuery.of(context).size.height * 0.67,
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Form(
                key: _key,
                child: Column(
                  children: [
                    const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _usernameController,
                      validator: _Username,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.lightGreen,
                        ),
                        hintText: "Username",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _emailController,
                      validator: _Email,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.lightGreen,
                        ),
                        hintText: "Email",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      validator: _Password,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.lightGreen,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _pass = !_pass;
                            });
                          },
                          child: Icon(
                            _pass ? Icons.visibility_off : Icons.visibility,
                            color: Colors.lightGreen,
                          ),
                        ),
                        hintText: "Password",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      obscureText: _pass,
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
                        if (_key.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  CategoryScreen(),
                            ),
                          );
                        }
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
                      style:
                          TextStyle(color: Color.fromARGB(255, 142, 141, 141)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
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
            ),
          ),
        ]),
      ),
    );
  }
}
