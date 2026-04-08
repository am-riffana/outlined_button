import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 102, 157),
        title:  Text("OUTLINED BUTTON"),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            print("Button clicked");
          },
          style: OutlinedButton.styleFrom(
            side:  BorderSide(color: Colors.blue, width: 2),
            padding:  EdgeInsets.symmetric(horizontal: 21, vertical: 12),
          ),
          child:  Text(
            "Retry",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}