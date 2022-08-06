import 'package:flutter/material.dart';
import 'package:ft_app/utils/app_layout.dart';
import 'package:ft_app/utils/app_styles.dart';
import 'package:ft_app/utils/circle_layout.dart';
import 'package:ft_app/view/layout_builder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketList;
  final bool isColorChanged;
  const TicketView(
      {Key? key, required this.ticketList, required this.isColorChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.9,
      height: AppLayout.getHeight(GetPlatform.isAndroid ? 180 : 182),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: isColorChanged ? Color(0xff526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticketList['from']['code'],
                        style: isColorChanged
                            ? Styles.headLine3.copyWith(color: Colors.white)
                            : Styles.headLine3,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      CircleLayout(
                        isColorChanged: isColorChanged,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child: AppLayoutBuilder(
                                  isColorChanged: true,
                                  sections: 6,
                                )),
                            Center(
                              child: Transform.rotate(
                                angle: 1.6,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColorChanged
                                      ? Colors.white
                                      : Color(0xffbaccf7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleLayout(
                        isColorChanged: isColorChanged,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        ticketList['to']['code'],
                        style: isColorChanged
                            ? Styles.headLine3.copyWith(color: Colors.white)
                            : Styles.headLine3,
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticketList['from']['name'],
                            style: isColorChanged
                                ? Styles.headLine4.copyWith(color: Colors.white)
                                : Styles.headLine4),
                      ),
                      Text(
                        ticketList['flying_time'],
                        style: isColorChanged
                            ? Styles.headLine3.copyWith(color: Colors.white)
                            : Styles.headLine3,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticketList['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColorChanged
                              ? Styles.headLine4.copyWith(color: Colors.white)
                              : Styles.headLine4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: isColorChanged ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: AppLayoutBuilder(
                          isColorChanged: true,
                          sections: 12,
                        )),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: isColorChanged ? Styles.orangeColor : Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                            AppLayout.getHeight(isColorChanged ? 21 : 0)),
                        bottomRight: Radius.circular(
                            AppLayout.getHeight(isColorChanged ? 21 : 0)))),
                padding:
                    EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Text(
                                ticketList['date'],
                                style: isColorChanged
                                    ? Styles.headLine3
                                        .copyWith(color: Colors.white)
                                    : Styles.headLine3,
                              ),
                            ),
                            Gap(5),
                            SizedBox(
                              child: Text(
                                "Date",
                                style: isColorChanged
                                    ? Styles.headLine4
                                        .copyWith(color: Colors.white)
                                    : Styles.headLine4,
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: Text(
                                ticketList['departure_time'],
                                style: isColorChanged
                                    ? Styles.headLine3
                                        .copyWith(color: Colors.white)
                                    : Styles.headLine3,
                              ),
                            ),
                            Gap(5),
                            SizedBox(
                              child: Text(
                                "Departure time",
                                style: isColorChanged
                                    ? Styles.headLine4
                                        .copyWith(color: Colors.white)
                                    : Styles.headLine4,
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              child: Text(
                                '${ticketList['number']}',
                                style: isColorChanged
                                    ? Styles.headLine3
                                        .copyWith(color: Colors.white)
                                    : Styles.headLine3,
                              ),
                            ),
                            Gap(5),
                            SizedBox(
                              child: Text(
                                "Number",
                                style: isColorChanged
                                    ? Styles.headLine4
                                        .copyWith(color: Colors.white)
                                    : Styles.headLine4,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
