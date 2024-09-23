import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit({this.inisialData = 0}) : super(inisialData);
  int inisialData;

  void kurangData() {
    emit(state - 1);
  }

  void tambahData() {
    emit(state + 1);
  }

  //Observer Bloc fitur untuk memantau data
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
    print(stackTrace);
  }
}

class HomePage extends StatelessWidget {
  CounterCubit myCounter = CounterCubit(inisialData: 99);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CUBIT APPS"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
              initialData: myCounter.inisialData,
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
                  myCounter.kurangData();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  myCounter.tambahData();
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
