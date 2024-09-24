import 'package:bloc_app/home/tengah.dart';
import 'package:flutter/material.dart';

class biru extends StatelessWidget {
  const biru({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      color: Colors.blue,
      child: tengah(),
    );
  }
}
