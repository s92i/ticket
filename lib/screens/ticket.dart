import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screens/ticket_view.dart';
import 'package:ticket/utils/info_list.dart';
import 'package:ticket/utils/layout.dart';
import 'package:ticket/utils/styles.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/ticket_tabs.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(20), vertical: Layout.getHeight(20)),
            children: [
              Gap(Layout.getHeight(40)),
              Text('Tickets', style: Styles.headLineStyle1,),
              Gap(Layout.getHeight(20)),
              TicketTabs(firstTab: 'Upcoming', secondTab: 'Previous',),
              Gap(Layout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: Layout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              SizedBox(height: 1,),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 15,),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(firstText: 'Flutter DB', secondText: 'Passenger', alignment: CrossAxisAlignment.start, isColor: false),
                        ColumnLayout(firstText: '1234 56789', secondText: 'Passport', alignment: CrossAxisAlignment.end, isColor: false),
                      ],
                    ),
                    Gap(Layout.getHeight(20)),
                    LayoutBuilderWidget(sections: 15, isColor: false, width: 5),
                    Gap(Layout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(firstText: '123456 123456789', secondText: 'E-ticket Number', alignment: CrossAxisAlignment.start, isColor: false),
                        ColumnLayout(firstText: 'BA2SY20', secondText: 'Booking Code', alignment: CrossAxisAlignment.end, isColor: false),
                      ],
                    ),
                    Gap(Layout.getHeight(20)),
                    LayoutBuilderWidget(sections: 15, isColor: false, width: 5),
                    Gap(Layout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/visa.png', scale: 11,),
                                Text(' *** 2462', style: Styles.headLineStyle3,),
                              ],
                            ),
                            Gap(5),
                            Text('Payment Method', style: Styles.headLineStyle4,),
                          ],
                        ),
                        ColumnLayout(firstText: '\$249.99', secondText: 'Price', alignment: CrossAxisAlignment.end, isColor: false),
                      ],
                    ),
                    SizedBox(height: 1,),
                    Gap(Layout.getHeight(20)),
                  ],
                ),
              ),
              SizedBox(height: 1,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(Layout.getHeight(21)), bottomLeft: Radius.circular(Layout.getHeight(21))),
                ),
                margin: EdgeInsets.only(left: Layout.getHeight(15), right: Layout.getHeight(15)),
                padding: EdgeInsets.only(top: Layout.getHeight(20), bottom: Layout.getHeight(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Layout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'data',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(Layout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: Layout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
          Positioned(
            left: Layout.getHeight(22),
              top: Layout.getHeight(295),
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
            right: Layout.getHeight(22),
            top: Layout.getHeight(295),
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
        ],
      ),
    );
  }
}
