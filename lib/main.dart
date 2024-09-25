import 'package:bloc_app/bloc/counter.dart';
import 'package:bloc_app/bloc/theme.dart';
import 'package:bloc_app/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeBloc myTheme = ThemeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => myTheme,
      child: BlocBuilder<ThemeBloc, bool>(
        bloc: myTheme,
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: state == true ? ThemeData.light() : ThemeData.dark(),
            home: BlocProvider(
              create: (context) => CounterBloc(),
              child: const HomePage(),
            ),
          );
        },
      ),
    );
  }
}
