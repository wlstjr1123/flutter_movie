import 'package:movie_portfolio/data/repository_impl/home_repository_impl.dart';
import 'package:movie_portfolio/domain/model/banner/banner_model.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_usecase.g.dart';

class HomeUseCase {
  HomeRepositoryImpl homeRepositoryImpl;

  HomeUseCase(this.homeRepositoryImpl);

  @override
  Future<List<BannerModel>> getBannerList() async {
    return await homeRepositoryImpl.getBannerList();
  }

  @override
  Future<List<MovieModel>> getMovieLIst() async {
    return await homeRepositoryImpl.getMovieLIst();
  }
}

@riverpod
HomeUseCase homeUseCase(HomeUseCaseRef ref) {
  final service = ref.watch(homeRepositoryProvider);
  return HomeUseCase(service);
}