import 'package:flutter/material.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';

class MovieDetailInfoPage extends StatelessWidget {
  final MovieModel movie;

  const MovieDetailInfoPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12, top: 12, right: 0, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "등장인물",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 105,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: movie.characters.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final data = movie.characters[index];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.account_circle, size: 60, color: Colors.black),
                    Text("${data}", style: TextStyle(
                      fontSize: 14.0
                    ),)
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
            ),
          ),
        ],
      ),
    );
  }
}
