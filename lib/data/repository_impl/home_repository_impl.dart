import 'package:movie_portfolio/data/datasource/movie_data_source.dart';
import 'package:movie_portfolio/domain/model/banner/banner_model.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';
import 'package:movie_portfolio/domain/repository/home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repository_impl.g.dart';

class HomeRepositoryImpl extends HomeRepository {
  MovieDataSource movieDataSource;

  HomeRepositoryImpl(this.movieDataSource);

  @override
  Future<List<BannerModel>> getBannerList() async {
    return await movieDataSource.getBannerData();
  }

  @override
  Future<List<MovieModel>> getMovieLIst() async {
    return await movieDataSource.getMovieData();
  }

}

@riverpod
HomeRepositoryImpl homeRepository(HomeRepositoryRef ref) {
  final service = ref.watch(movieServiceProvider);
  return HomeRepositoryImpl(service);
}