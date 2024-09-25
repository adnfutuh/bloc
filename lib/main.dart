import 'package:bloc_app/bloc/counter.dart';
import 'package:bloc_app/home/home_page.dart';
import 'package:bloc_app/other/other_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Counter myCounter = Counter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => BlocProvider.value(
              value: myCounter,
              child: const HomePage(),
            ),
        "/other": (context) => BlocProvider.value(
              value: myCounter,
              child: const OtherPage(),
            )
      },
    );
  }
}
//akan error jika membuat page baru makanya harus membuat block provider baru atau menaikkan bloc provider
