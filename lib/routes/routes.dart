import 'package:bloc_app/404/not_found.dart';
import 'package:bloc_app/bloc/counter.dart';
import 'package:bloc_app/home/home_page.dart';
import 'package:bloc_app/other/other_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRouter {
  final Counter myCounter = Counter();
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounter,
            child: const HomePage(),
          ),
        );
      case "/other":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounter,
            child: const OtherPage(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFound(),
        );
    }
  }
}
