import 'package:bloc_app/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Centerwidget extends StatelessWidget {
  const Centerwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
    return BlocBuilder<Counter, int>(
      bloc: myCounter,
      builder: (context, state) {
        return Center(
          child: Text(
            "$state",
            style: const TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
