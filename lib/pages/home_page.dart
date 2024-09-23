import 'package:bloc_app/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  Counter myCounter = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Builder"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<Counter, int>(
            bloc: myCounter,
            buildWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              return Center(
                child: Text(
                  '$state',
                  style: const TextStyle(fontSize: 50),
                ),
              );
            },
          ),

          // StreamBuilder(
          //     initialData: myCounter.init,
          //     stream: myCounter.stream,
          //     builder: (context, snapshot) {
          //       return Center(
          //         child: Text(
          //           '${snapshot.data}',
          //           style: const TextStyle(fontSize: 50),
          //         ),
          //       );
          //     }),
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
