import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_portfolio/bloc_privider.dart';
import 'package:movie_portfolio/firebase_options.dart';
import 'package:movie_portfolio/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  runApp(ProviderScope(child: MainApp()));
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocPrivider(
      child: MaterialApp.router(
        title: "movie",
        routerConfig: router,
      ),
    );
  }
}
