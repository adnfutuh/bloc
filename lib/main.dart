import 'package:bloc_app/bloc/counter.dart';
import 'package:bloc_app/bloc/theme.dart';
import 'package:bloc_app/home/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => CounterBloc(),
      ),
      BlocProvider(
        create: (context) => ThemeBloc(),
      ),
    ], child: const App());
  }
}
