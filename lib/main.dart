import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text("Loing In Now"),
              const Text("Please loging to continune using app"),
              const TextField(
                decoration: InputDecoration(hintText: "Email"),
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(
                      Icons.visibility_off,
                    )),
              ),
              const Align(
                alignment: AlignmentDirectional.topEnd,
                child: Text(
                  "Forget password ?",
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("hello");
                  },
                  style:  ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  ),
                  
                  child: const Text("login")),
                  
            ]),
          ),
        ),
      ),
    );
  }
}
