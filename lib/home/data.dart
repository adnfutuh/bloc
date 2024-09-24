import 'package:bloc_app/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
    return BlocBuilder<Counter, int>(
      bloc: myCounter,
      builder: (context, state) {
        return Text(
          "$state",
          style: const TextStyle(fontSize: 50),
        );
      },
    );
  }
}
