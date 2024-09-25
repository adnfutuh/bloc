import 'package:bloc_app/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("other Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: Center(
        child: BlocBuilder<Counter, int>(
          bloc: myCounter,
          builder: (context, state) {
            return Text(
              "$state",
              style: const TextStyle(fontSize: 50),
            );
          },
        ),
      ),
    );
  }
}
