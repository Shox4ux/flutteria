import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ft_app/utils/app_layout.dart';
import 'package:ft_app/utils/app_styles.dart';
import 'package:ft_app/view/column_layout.dart';
import 'package:ft_app/view/layout_builder.dart';
import 'package:ft_app/view/ticket_tabs.dart';
import 'package:ft_app/view/ticket_view.dart';
import 'package:gap/gap.dart';
import '../data/app_info_list.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(12),
              vertical: AppLayout.getWidth(12)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headLine,
            ),
            Gap(AppLayout.getHeight(20)),
            TabView(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticketList: ticketList[0],
                isColorChanged: false,
              ),
            ),
            /* bottom part of the ticket*/
            SizedBox(
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(15)),
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: 'Flutter Dv',
                        secondText: 'Passenger',
                        isFixed: true,
                      ),
                      ColumnLayout(
                        firstText: '1432 56784',
                        secondText: 'Passport',
                        isFixed: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppLayoutBuilder(isColorChanged: false, sections: 15),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: '005 1780 205',
                        secondText: 'Number of E-ticket',
                        isFixed: true,
                      ),
                      ColumnLayout(
                        firstText: 'SAM2005',
                        secondText: 'Booking code',
                        isFixed: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppLayoutBuilder(
                    isColorChanged: false,
                    sections: 15,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/visa.png',
                                scale: 11,
                              ),
                              Text(' *** 2455'),
                            ],
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text("Payment method"),
                        ],
                      ),
                      ColumnLayout(
                        firstText: '\$310.99',
                        secondText: 'Price',
                        isFixed: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /***
           * bar code widget
           */
            SizedBox(
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(20)),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    data: 'https://pub.dev/packages/',
                    barcode: Barcode.code128(),
                    color: Styles.textColor,
                    height: 70,
                    drawText: false,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticketList: ticketList[0],
                isColorChanged: true,
              ),
            ),
          ],
        ),
        Positioned(
          left: AppLayout.getHeight(16),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor, width: 2),
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(16),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor, width: 2),
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        )
      ]),
    );
  }
}
