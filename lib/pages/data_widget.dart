import 'package:bloc_app/bloc/counter.dart';
import 'package:bloc_app/pages/center_Widget.dart';
import 'package:flutter/material.dart';

class dataWidget extends StatelessWidget {
  const dataWidget({
    super.key,
    required this.myCounter2,
  });

  final Counter myCounter2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.red,
      child: centerwidget(myCounter3: myCounter2),
    );
  }
}
