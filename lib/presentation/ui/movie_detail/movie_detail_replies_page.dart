import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_portfolio/data/db/bloc/reply_bloc.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';
import 'package:movie_portfolio/presentation/view_model/movie_detail_view_model/movie_detail_view_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieDetailRepliesPage extends ConsumerStatefulWidget {
  final MovieModel movie;

  const MovieDetailRepliesPage({super.key, required this.movie});

  @override
  ConsumerState<MovieDetailRepliesPage> createState() =>
      _MovieDetailRepliesPageState();
}

class _MovieDetailRepliesPageState
    extends ConsumerState<MovieDetailRepliesPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .watch(movieDetailViewModelProvider.notifier)
          .replyReadAll(context.read<ReplyCubit>());
    });
  }

  @override
  void didUpdateWidget(covariant MovieDetailRepliesPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .watch(movieDetailViewModelProvider.notifier)
          .replyReadAll(context.read<ReplyCubit>());
    });
  }

  @override
  Widget build(BuildContext context) {
    final movieDetailViewModelState = ref.watch(movieDetailViewModelProvider);
    final movieDetailViewModelFun =
        ref.watch(movieDetailViewModelProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                onPressed: () {
                  context.push("/movieAddReply", extra: widget.movie);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.create,
                      color: Colors.black,
                    ),
                    Text(
                      "댓글 달기",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )),
          ),
          SizedBox(height: 10),
          Container(
            height: 5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          ),
          ListView.builder(
              itemCount: movieDetailViewModelState.replyModel.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final data = movieDetailViewModelState.replyModel[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.account_circle, color: Colors.black, size: 40,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RatingBar(
                                  ignoreGestures: true,
                                  initialRating: data.rating!,
                                  minRating: 0,
                                  allowHalfRating: true,
                                  // 반 개 단위 허용
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  // 별 크기 조정
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  ratingWidget: RatingWidget(
                                    full: Icon(Icons.star, color: Colors.amber),
                                    half: Icon(Icons.star_half, color: Colors.amber),
                                    empty: Icon(Icons.star_border, color: Colors.amber),
                                  ),
                                  onRatingUpdate: (rating) {
                                  },
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    movieDetailViewModelFun.replyDelete(data, context.read<ReplyCubit>());
                                  },
                                  child: Icon(Icons.delete, color: Colors.black,),
                                )
                              ],
                            ),
                          ),
                          Text("${data.title}",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("${data.content}")
                        ],
                      ),
                    ),
                  ],
                );
              }
          )
        ],
      ),
    );
  }
}
