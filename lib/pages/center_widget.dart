import 'package:bloc_app/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class centerwidget extends StatelessWidget {
  const centerwidget({
    super.key,
    required this.myCounter3,
  });

  final Counter myCounter3;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Counter, int>(
      bloc: myCounter3,
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
