import 'package:bloc_app/bloc/counter.dart';
import 'package:bloc_app/home/merah.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency Injection"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.green,
                borderRadius: BorderRadius.circular(25),
                child: InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: () {
                    myCounter.decrement();
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              merah(),
              Material(
                color: Colors.green,
                borderRadius: BorderRadius.circular(25),
                child: InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: () {
                    myCounter.increment();
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
