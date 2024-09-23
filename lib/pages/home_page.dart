import 'package:bloc_app/bloc/counter.dart';
import 'package:flutter/material.dart';

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
          StreamBuilder(
              initialData: myCounter.init,
              stream: myCounter.stream,
              builder: (context, snapshot) {
                return Center(
                  child: Text(
                    '${snapshot.data}',
                    style: const TextStyle(fontSize: 50),
                  ),
                );
              }),
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
