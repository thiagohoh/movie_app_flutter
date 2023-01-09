import 'package:flutter/material.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  const Text("Movies"),
        ),
      ),
    );
  }
}


