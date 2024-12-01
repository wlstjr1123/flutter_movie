import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:movie_portfolio/domain/model/banner/banner_model.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_data_source.g.dart';

class MovieDataSource {
  Future<List<BannerModel>> getBannerData() async {
    String jsonString = await rootBundle.loadString("assets/json/banner_list.json");
    final List<dynamic> jsonResponse = json.decode(jsonString);
    final List<BannerModel> objects = jsonResponse.map((data) => BannerModel.fromJson(data)).toList();
    return objects;
  }

  Future<List<MovieModel>> getMovieData() async {
    String jsonString = await rootBundle.loadString("assets/json/movie_list.json");
    final List<dynamic> jsonResponse = json.decode(jsonString);
    final List<MovieModel> objects = jsonResponse.map((data) => MovieModel.fromJson(data)).toList();
    return objects;
  }
}

@riverpod
MovieDataSource movieService(MovieServiceRef ref) {
  return MovieDataSource();
}
