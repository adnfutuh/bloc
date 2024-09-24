import 'package:bloc_app/pages/center_Widget.dart';
import 'package:flutter/material.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.red,
      child: const Centerwidget(),
    );
  }
}
