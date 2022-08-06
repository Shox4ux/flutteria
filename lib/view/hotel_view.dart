import 'package:flutter/material.dart';
import 'package:ft_app/utils/app_layout.dart';
import 'package:ft_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HoletView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HoletView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.5,
      height: AppLayout.getHeight(320),
      margin: EdgeInsets.only(top: 5, bottom: 5, right: 17),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 2)
      ], color: Styles.primaryColor, borderRadius: BorderRadius.circular(24)),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/${hotel['image']}"))),
          ),
          Gap(8),
          Text("${hotel['place']}",
              style: Styles.headLine2.copyWith(
                color: Styles.kakiColor,
              )),
          Gap(3),
          Text("${hotel['destination']}",
              style: Styles.headLine3.copyWith(
                color: Colors.white,
              )),
          Gap(3),
          Text("\$${hotel['price']}/night",
              style: Styles.headLine.copyWith(
                color: Styles.kakiColor,
              )),
        ],
      ),
    );
  }
}
