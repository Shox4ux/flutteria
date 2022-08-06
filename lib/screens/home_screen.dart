import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ft_app/data/app_info_list.dart';
import 'package:ft_app/utils/app_layout.dart';
import 'package:ft_app/utils/app_styles.dart';
import 'package:ft_app/view/view_all.dart';
import 'package:ft_app/view/hotel_view.dart';
import 'package:ft_app/view/ticket_view.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLine3,
                        ),
                        Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLine,
                        )
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/img_1.png')),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff4f6fd)),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xffbfc205)),
                      Text(
                        'Search',
                        style: Styles.headLine4,
                      )
                    ],
                  ),
                ),
                Gap(30),
                DoubleText(
                  firstText: "Upcoming flights",
                  secondText: "View all",
                  isFixed: true,
                )
              ]),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                  children: ticketList
                      .map((e) => TicketView(
                            ticketList: e,
                            isColorChanged: true,
                          ))
                      .toList()),
            ),
            Gap(15),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DoubleText(
                  firstText: "Hotels",
                  secondText: "View all",
                  isFixed: true,
                )),
            Gap(15),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Row(
                    children:
                        hotelList.map((e) => HoletView(hotel: e)).toList()))
          ],
        ));
  }
}
