import 'package:flutter/material.dart';

class CircleLayout extends StatelessWidget {
  final bool isColorChanged;
  const CircleLayout({Key? key, required this.isColorChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 2.5,
              color: isColorChanged ? Colors.white : Color(0xffbaccf7))),
    );
  }
}
