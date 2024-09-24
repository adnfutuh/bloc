import 'package:bloc_app/bloc/counter.dart';
import 'package:bloc_app/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => Counter(),
          child: HomePage(),
        ));
  }
}
//akan error jika membuat page baru makanya harus membuat block provider baru atau menaikkan bloc provider
