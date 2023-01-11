import 'package:appmoove_mobile_test/components/movie_list.dart';
import 'package:appmoove_mobile_test/components/trending_movie.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Movies"),
      ),
      body: SafeArea(
          child: Column(
        children: const [
          TrendingMovie(),
          MovieList(),
        ],
      )),
    );
  }
}
