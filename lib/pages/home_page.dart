import 'package:bloc_app/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Selector"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          BlocSelector<UserBloc, Map<String, dynamic>, String>(
            bloc: userBloc,
            selector: (state) => state['name'],
            builder: (context, state) {
              return Text("Nama: $state");
            },
          ),
          BlocSelector<UserBloc, Map<String, dynamic>, int>(
            bloc: userBloc,
            selector: (state) => state["age"],
            builder: (context, state) {
              return Text("Umur: $state Tahun");
            },
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: (value) => userBloc.changeName(value),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  userBloc.changeAge(userBloc.state["age"] - 1);
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  userBloc.changeAge(userBloc.state["age"] + 1);
                },
                icon: const Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
