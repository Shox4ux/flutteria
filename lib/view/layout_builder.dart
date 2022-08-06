import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool isColorChanged;
  final int sections;
  const AppLayoutBuilder(
      {Key? key, required this.isColorChanged, required this.sections})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: 5,
              height: 1,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color:
                          isColorChanged ? Colors.white : Color(0xffbaccf7))),
            ),
          ),
        );
      },
    );
  }
}
