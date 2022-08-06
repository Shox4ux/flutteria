import 'package:flutter/material.dart';
import 'package:ft_app/utils/app_layout.dart';
import 'package:ft_app/utils/app_styles.dart';
import 'package:ft_app/view/icon_text_widget.dart';
import 'package:ft_app/view/ticket_tabs.dart';
import 'package:ft_app/view/view_all.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLine.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          TabView(firstTab: "Tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(15)),
          AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(12),
                horizontal: AppLayout.getHeight(12)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              color: Color(0xd91130ce),
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(30)),
          DoubleText(
            firstText: 'Upcoming flights',
            secondText: "View all",
            isFixed: true,
          ),
          Gap(AppLayout.getHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .42,
                height: AppLayout.getHeight(425),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, blurRadius: 2, spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/sit.jpg'))),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out the chance. ",
                      style: Styles.headLine3.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(12),
                            horizontal: AppLayout.getWidth(12)),
                        width: size.width * .42,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                            color: Color(0xff3abbbb),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLine2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Take the survey about our surveyes and get discount",
                              style: Styles.headLine2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 12, color: Color(0xff189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(12),
                        horizontal: AppLayout.getWidth(12)),
                    width: size.width * .42,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                        color: Color(0xffec6545),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLine2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(10)),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: '😍', style: TextStyle(fontSize: 28)),
                              TextSpan(
                                  text: '🥰', style: TextStyle(fontSize: 40)),
                              TextSpan(
                                  text: '😘', style: TextStyle(fontSize: 28)),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
