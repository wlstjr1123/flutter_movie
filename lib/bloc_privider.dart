import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_portfolio/data/db/bloc/reply_bloc.dart';

class BlocPrivider extends StatelessWidget {
  final Widget child;

  const BlocPrivider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => ReplyCubit())
    ], child: child);
  }
}
