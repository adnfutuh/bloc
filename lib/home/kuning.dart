import 'package:bloc_app/home/biru.dart';
import 'package:flutter/material.dart';

class kuning extends StatelessWidget {
  const kuning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      color: Colors.amber,
      child: const biru(),
    );
  }
}
