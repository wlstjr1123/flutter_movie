import 'package:movie_portfolio/data/repository_impl/home_repository_impl.dart';
import 'package:movie_portfolio/domain/model/banner/banner_model.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';
import 'package:movie_portfolio/domain/use_cases/home/home_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_model.g.dart';

part 'home_view_model.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<BannerModel> bannerList,
    @Default([]) List<MovieModel> movieList,
}) = _HomeState;
}

@riverpod
class HomeViewModel extends _$HomeViewModel {

  @override
  HomeState build() {
    return HomeState(bannerList: [], movieList: []);
  }

  updateBannerList(List<BannerModel> banners) {
    state = state.copyWith(
      bannerList: [...banners],
    );
  }

  updateMovieList(List<MovieModel> movies) {
    state = state.copyWith(
      movieList: [...movies]
    );
  }

  fetchBannerList() async {
    final result = await ref.watch(homeUseCaseProvider).getBannerList();
    updateBannerList(result);
  }

  fetchMovieList() async {
    final result = await ref.watch(homeUseCaseProvider).getMovieLIst();
    updateMovieList(result);
  }

}

