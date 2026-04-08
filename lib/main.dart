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
        backgroundColor: const Color.fromARGB(255, 140, 7, 29),
        title:  Text("OUTLINED BUTTON",style:TextStyle(fontSize:30,color: const Color.fromARGB(238, 255, 255, 255)),),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            print("Button clicked");
          },
          style: OutlinedButton.styleFrom(
            side:  BorderSide(color: const Color.fromARGB(255, 209, 19, 19), width: 5),
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