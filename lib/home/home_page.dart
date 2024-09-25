import 'package:bloc_app/bloc/counter.dart';
import 'package:bloc_app/bloc/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc myCounter = BlocProvider.of<CounterBloc>(context);
    ThemeBloc myTheme = context.read<ThemeBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Bloc Listener"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        myTheme.change();
      }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MultiBlocListener(
            listeners: [
              BlocListener<CounterBloc, int>(
                listener: (context, state) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Di atas 10"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                listenWhen: (previous, current) {
                  if (current > 10) {
                    return true;
                  } else {
                    return false;
                  }
                },
              ),
              BlocListener<ThemeBloc, bool>(
                listener: (context, state) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Dark Mode"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                listenWhen: (previous, current) {
                  if (current == false) {
                    return true;
                  } else {
                    return false;
                  }
                },
              ),
            ],
            child: BlocBuilder<CounterBloc, int>(
              bloc: myCounter,
              builder: (context, state) {
                return Text(
                  "$state",
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  myCounter.kurang();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  myCounter.tambah();
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
