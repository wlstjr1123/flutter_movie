import 'package:movie_portfolio/domain/model/banner/banner_model.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';

abstract class HomeRepository {
  Future<List<BannerModel>> getBannerList();

  Future<List<MovieModel>> getMovieLIst();
}