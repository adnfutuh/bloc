import 'package:bloc_app/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  Counter myCounter = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Consumer"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<Counter, int>(
            bloc: myCounter,
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text("Genap Bang"),
                ),
              );
            },
            listenWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              if (state < 10) {
                return const Center(
                  child: Text(
                    "under 10",
                    style: TextStyle(fontSize: 50),
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    '$state',
                    style: const TextStyle(fontSize: 50),
                  ),
                );
              }
            },
            buildWhen: (previous, current) {
              if (current < 10) {
                return true;
              } else if (current >= 10) {
                return true;
              } else {
                return false;
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  myCounter.decrement();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  myCounter.increment();
                },
                icon: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
