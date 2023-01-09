import 'package:appmoove_mobile_test/components/full_card.dart';
import 'package:appmoove_mobile_test/components/small_movie_display.dart';
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
        children: [
          FullCard(
              title: "Title",
              imageWidget: Image.network(
                  "https://image.tmdb.org/t/p/original/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg")),
          SmallMovieDisplay(
            image: Image.network(
                "https://image.tmdb.org/t/p/original/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg"),
            title: "movie title",
          )
        ],
      )),
    );
  }
}
