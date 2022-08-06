import 'package:flutter/material.dart';
import 'package:ft_app/bottom_navigation/bottom_bar.dart';
import 'package:ft_app/utils/app_styles.dart';
import '../bottom_navigation/bottom_bar.dart';

void main() {
  runApp(const Double());
}

class Double extends StatefulWidget {
  const Double({Key? key}) : super(key: key);

  @override
  State<Double> createState() => _DoubleState();
}

class _DoubleState extends State<Double> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor:
              primary), // ! "primary" called directly from Styles package
      home: BottomBar(),
    );
  }
}
