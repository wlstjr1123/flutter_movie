import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_portfolio/data/db/bloc/reply_bloc.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';
import 'package:movie_portfolio/domain/model/reply/reply_model.dart';
import 'package:movie_portfolio/presentation/ui/home/home_page.dart';
import 'package:movie_portfolio/presentation/view_model/movie_detail_view_model/movie_detail_view_model.dart';

class MovieDetailAddReplyPage extends ConsumerStatefulWidget {
  final MovieModel movieData;

  const MovieDetailAddReplyPage({super.key, required this.movieData});

  @override
  ConsumerState<MovieDetailAddReplyPage> createState() =>
      _MovieDetailAddReplyPageState();
}

class _MovieDetailAddReplyPageState
    extends ConsumerState<MovieDetailAddReplyPage> {
  var _rating = 1.5;
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final movieDetailViewModelFun = ref.watch(
        movieDetailViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RatingBar(
              initialRating: _rating,
              minRating: 0,
              allowHalfRating: true,
              // 반 개 단위 허용
              itemCount: 5,
              itemSize: 40.0,
              // 별 크기 조정
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              ratingWidget: RatingWidget(
                full: Icon(Icons.star, color: Colors.amber),
                half: Icon(Icons.star_half, color: Colors.amber),
                empty: Icon(Icons.star_border, color: Colors.amber),
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  _rating = rating;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(
                    hintText: "제목",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: contentController,
                decoration: InputDecoration(
                    hintText: "내용",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () async {
                  if (titleController.text.isEmpty ||
                      contentController.text.isEmpty) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(
                        SnackBar(
                            duration: Duration(seconds: 1),
                            content:
                            Text(
                              "모두 입력해 주세요.",
                            )
                        )
                    );
                    return;
                  }
                  var accountInfo = await movieDetailViewModelFun.getAccount();

                  if (accountInfo == null) {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          actions: [
                            TextButton(onPressed: () {
                              Navigator.of(context).pop();
                              context.push("/my");
                            }, child: Text("yes"))
                          ],
                          title: Text("로그인 하셔야합니다."),
                          content: Text("로그인 하셔야합니다"),
                        )
                    );
                  } else {
                    var data = ReplyModel(userId: accountInfo.userId,
                        userName: accountInfo.name,
                        date: DateTime.now(),
                        content: contentController.text,
                        title: titleController.text,
                        rating: _rating,
                        movieId: widget.movieData.movieId);

                    var value = await movieDetailViewModelFun.saveReply(data, context.read<ReplyCubit>());

                    if (value) {
                      context.pop();
                    }
                  }
                },
                child: Text(
                  "댓글쓰기",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
