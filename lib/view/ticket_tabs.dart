import 'package:flutter/material.dart';
import 'package:ft_app/utils/app_layout.dart';

class TabView extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const TabView({Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: Color(0xfff4f6fd),
        ),
        child: Row(
          children: [
            // tickets
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child: Center(child: Text(firstTab)),
            ),
            //hotels
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.transparent),
              child: Center(child: Text(secondTab)),
            )
          ],
        ),
      ),
    );
  }
}
