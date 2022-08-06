import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class DoubleText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool isFixed;
  const DoubleText(
      {Key? key,
      required this.firstText,
      required this.isFixed,
      required this.secondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText, style: isFixed ? Styles.headLine2 : Styles.headLine4),
        InkWell(
          child: Text(secondText,
              style: isFixed
                  ? Styles.headLine4.copyWith(color: Styles.primaryColor)
                  : Styles.headLine4),
        )
      ],
    );
  }
}
