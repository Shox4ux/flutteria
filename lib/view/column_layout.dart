import 'package:flutter/material.dart';
import 'package:ft_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool isFixed;
  const ColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.isFixed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isFixed ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Text(
          firstText,
          style: Styles.headLine3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: Styles.headLine4,
        ),
      ],
    );
  }
}
