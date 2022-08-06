import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ft_app/utils/app_layout.dart';
import 'package:ft_app/utils/app_styles.dart';
import 'package:ft_app/view/column_layout.dart';
import 'package:ft_app/view/view_all.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(60)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image:
                        DecorationImage(image: AssetImage('images/img_1.png'))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLine,
                  ),
                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(3),
                        vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: Colors.white,
                    ),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff526799),
                        ),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        "Premium status",
                        style: TextStyle(
                            color: Color(0xff526799),
                            fontWeight: FontWeight.w600),
                      ),
                      Gap(AppLayout.getHeight(5))
                    ]),
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text("Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300))
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xff264cd2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(20),
                    horizontal: AppLayout.getWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        size: 27,
                        color: Styles.primaryColor,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'ve got a new award",
                          style: Styles.headLine2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "You had 99 flights so far",
                          style: Styles.headLine4
                              .copyWith(color: Colors.white.withOpacity(0.9)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Accumulated miles",
            style: Styles.headLine2,
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
                vertical: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1)
                ],
                borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                color: Colors.white),
            child: Column(children: [
              Text(
                "192003",
                style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600),
              ),
              Gap(AppLayout.getHeight(20)),
              DoubleText(
                firstText: "Miles Accured",
                secondText: " 5 August 2022",
                isFixed: false,
              ),
              Gap(AppLayout.getHeight(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(
                      firstText: "23 009", secondText: "Miles", isFixed: true),
                  ColumnLayout(
                      firstText: "Airline CO",
                      secondText: "received from",
                      isFixed: false),
                ],
              ),
              Gap(AppLayout.getHeight(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(
                      firstText: "25", secondText: "Miles", isFixed: true),
                  ColumnLayout(
                      firstText: "UChicago",
                      secondText: "received from",
                      isFixed: false),
                ],
              ),
              Gap(AppLayout.getHeight(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(
                      firstText: "1009", secondText: "Miles", isFixed: true),
                  ColumnLayout(
                      firstText: "Silicon Valley",
                      secondText: "received from",
                      isFixed: false),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Text("Was that unforgetable adventure?",
                  style: Styles.headLine4.copyWith(color: Styles.primaryColor)),
            ]),
          )
        ],
      ),
    );
  }
}
