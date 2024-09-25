import 'package:bloc_app/bloc/counter.dart';
import 'package:bloc_app/home/merah.dart';
import 'package:bloc_app/other/other_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Counter myCounter = BlocProvider.of<Counter>(context);
    Counter myCounter = context.read();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Global Access"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const OtherPage()));
          // Navigator.pushNamed(context, "/other");
        },
        child: const Icon(Icons.arrow_forward),
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
              const merah(),
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
