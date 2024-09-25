import 'package:bloc_app/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = MyRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.onRoute,
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => BlocProvider.value(
      //         value: myCounter,
      //         child: const HomePage(),
      //       ),
      //   "/other": (context) => BlocProvider.value(
      //         value: myCounter,
      //         child: const OtherPage(),
      //       )
      // },
    );
  }
}
