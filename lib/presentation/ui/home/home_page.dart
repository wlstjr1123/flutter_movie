import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_portfolio/presentation/view_model/home_view_model.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(homeViewModelProvider.notifier).fetchBannerList();
      ref.watch(homeViewModelProvider.notifier).fetchMovieList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(
            onPressed: () {
              context.push("/my");
            },
            icon: Icon(
              Icons.dehaze_sharp,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarouselSlider.builder(
              options: CarouselOptions(
                viewportFraction: 1.0,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 300),
                autoPlayInterval: const Duration(seconds: 3),
              ),
              itemCount: homeViewModel.bannerList.length,
              itemBuilder: (context, index, realIndex) {
                final banner = homeViewModel.bannerList[index];
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  width: MediaQuery.of(this.context).size.width,
                  height: 250,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          width: double.infinity,
                          height: double.infinity,
                          "${banner.imageurl}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        child: Text(
                          "${banner.movieName}",
                          style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.black.withOpacity(0.3)),
                        ),
                        bottom: 10,
                        left: 10,
                      ),
                      Positioned(
                        child: Text(
                          "${index + 1}/${homeViewModel.bannerList.length}",
                          style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.black.withOpacity(0.3)),
                        ),
                        bottom: 10,
                        right: 10,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemCount: homeViewModel.movieList.length,
                  itemBuilder: (context, index) {
                    final movie = homeViewModel.movieList[index];
                    return InkWell(
                      borderRadius: BorderRadius.circular(10.0),
                      onTap: () {
                        context.push("/movieDetail", extra: movie);
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0))),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0)
                                ),
                                child: Image.network(
                                  "${movie.imageUrl}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Center(child: Text("${movie.movieName}")),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
