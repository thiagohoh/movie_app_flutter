import 'package:appmoove_mobile_test/pages/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      routes: {'/home': (context) => const Dashboard()},
    );
  }
}
