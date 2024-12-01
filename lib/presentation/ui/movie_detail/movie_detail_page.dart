import 'package:flutter/material.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';
import 'package:movie_portfolio/presentation/ui/movie_detail/movie_detail_info_page.dart';
import 'package:movie_portfolio/presentation/ui/movie_detail/movie_detail_replies_page.dart';

class MovieDetailPage extends StatefulWidget {
  final MovieModel movieData;

  const MovieDetailPage({super.key, required this.movieData});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.network(
                      height: 130,
                      fit: BoxFit.cover,
                      "${widget.movieData.imageUrl}",
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${widget.movieData.movieName}",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${widget.movieData.time}",
                            ),
                            Text(
                              "${widget.movieData.filmRatings}",
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 1.0,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [Text("${widget.movieData.summary}")],
            ),
          ),
          Container(
            width: double.infinity,
            height: 4.0,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          TabBar(controller: tabController, tabs: [
            Tab(
              child: Text("상세정보"),
            ),
            Tab(
              child: Text("댓글"),
            )
          ]),
          Expanded(
              child:
              TabBarView(
                controller: tabController,
                  children: <Widget>[
                    MovieDetailInfoPage(movie: widget.movieData),
                    MovieDetailRepliesPage(movie: widget.movieData),
                  ]
              )
          )
        ],
      ),
    );
  }
}
