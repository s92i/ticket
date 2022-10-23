import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/layout.dart';
import 'package:ticket/utils/styles.dart';
import 'package:ticket/widgets/icon_text.dart';

import '../widgets/double_text.dart';
import '../widgets/ticket_tabs.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Layout.getWidth(20), vertical: Layout.getHeight(20)),
        children: [
          Gap(Layout.getHeight(40)),
          Text('What are\nyou looking for ?', style: Styles.headLineStyle1.copyWith(fontSize: Layout.getWidth(35)),),
          Gap(Layout.getHeight(20)),
          TicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels',),
          Gap(Layout.getHeight(25)),
          IconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(Layout.getHeight(20)),
          IconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(Layout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: Layout.getWidth(18), horizontal: Layout.getWidth(15)),
            decoration: BoxDecoration(
              color: Color(0xD91130CE),
              borderRadius: BorderRadius.circular(Layout.getWidth(10)),
            ),
            child: Center(
              child: Text('Find tickets', style: Styles.textStyle.copyWith(color: Colors.white),),
            ),
          ),
          Gap(Layout.getHeight(40)),
          DoubleText(bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(Layout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: Layout.getHeight(425),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(15), vertical: Layout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Layout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: Layout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Layout.getHeight(12)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/sit.jpg"
                          ),
                        ),
                      ),
                    ),
                    Gap(Layout.getHeight(12)),
                    Text("20% discount on the early booking of this flight. Don't miss.",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: Layout.getHeight(200),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(Layout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(vertical: Layout.getHeight(15), horizontal: Layout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Discount\nfor survey', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                            Gap(Layout.getHeight(10)),
                            Text('Take the survey about our services and get a discount', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),)
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child:  Container(
                        padding: EdgeInsets.all(Layout.getHeight(30)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Color(0xFF189999)),
                          color: Colors.transparent,
                        ),
                        ),
                      ),
                    ],
                  ),
                  Gap(Layout.getHeight(15)),
                  Container(
                    width: size.width*0.44,
                    height: Layout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: Layout.getHeight(15), horizontal: Layout.getWidth(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Layout.getHeight(18)),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text('Take Love', style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                        Gap(Layout.getHeight(5)),
                        RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 38),
                                ),
                                TextSpan(
                                  text: '🥰',
                                  style: TextStyle(fontSize: 50),
                                ),
                                TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 38),
                                ),
                              ],
                            ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
