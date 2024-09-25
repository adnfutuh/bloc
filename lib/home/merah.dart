import 'package:bloc_app/home/kuning.dart';
import 'package:flutter/material.dart';

class merah extends StatelessWidget {
  const merah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
      child: const kuning(),
    );
  }
}
