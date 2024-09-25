import 'package:bloc_app/bloc/counter.dart';
import 'package:bloc_app/home/home_page.dart';
import 'package:bloc_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Counter myCounter = Counter();
  // final router = MyRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        // onGenerateRoute: router.onRoute,
      ),
    );
  }
}
