import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/layout.dart';
import 'package:ticket/utils/styles.dart';
import 'package:ticket/widgets/column_layout.dart';
import 'package:ticket/widgets/layout_builder_widget.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Layout.getWidth(20), vertical: Layout.getHeight(20)),
        children: [
          Gap(Layout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Layout.getHeight(86),
                width: Layout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Layout.getHeight(10)),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/img_1.png'
                    ),
                  ),
                ),
              ),
              Gap(Layout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: Styles.headLineStyle1,),
                  Gap(Layout.getHeight(2)),
                  Text('New-York', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                  Gap(Layout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Layout.getHeight(100)),
                      color: Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(3), vertical: Layout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15,),
                        ),
                        Gap(Layout.getHeight(5)),
                        Text('Premium Status', style: TextStyle(color: Color(0xFF526799), fontWeight: FontWeight.w600),),
                        Gap(Layout.getHeight(5)),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("test");
                    },
                      child: Text('Edit', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),)),
                ],
              ),
            ],
          ),
          Gap(Layout.getHeight(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(Layout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: Layout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(Layout.getHeight(18)),
                ),
              ),
              Positioned(
                right: -45,
                  top: -40,
                  child: Container(
                padding: EdgeInsets.all(Layout.getHeight(30)),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(width: 18, color: Color(0xFF264CD2)),
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(25), vertical: Layout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27,),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(Layout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You\'ve got a new reward', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        Text('You have 95 flights in a year', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9), fontSize: 16),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(Layout.getHeight(25)),
          Text('Accumulated Miles', style: Styles.headLineStyle2,),
          Gap(Layout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Layout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Layout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ]
            ),
            child: Column(
              children: [
                Gap(Layout.getHeight(15)),
                Text('192802', style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),),
                Gap(Layout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles Accrued', style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text('11 June 2022', style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                Gap(Layout.getHeight(4)),
                Divider(color: Colors.grey.shade300,),
                Gap(Layout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(firstText: '23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),
                    ColumnLayout(firstText: 'Airline CO', secondText: 'Received From', alignment: CrossAxisAlignment.end, isColor: false),
                  ],
                ),
                Gap(Layout.getHeight(12)),
                LayoutBuilderWidget(sections: 12, isColor: false),
                Gap(Layout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(firstText: '24', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),
                    ColumnLayout(firstText: 'McDonald\'s', secondText: 'Received From', alignment: CrossAxisAlignment.end, isColor: false),
                  ],
                ),
                Gap(Layout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(firstText: '24', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),
                    ColumnLayout(firstText: 'McDonald\'s', secondText: 'Received From', alignment: CrossAxisAlignment.end, isColor: false),
                  ],
                ),
                Gap(Layout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(firstText: '24', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),
                    ColumnLayout(firstText: 'McDonald\'s', secondText: 'Received From', alignment: CrossAxisAlignment.end, isColor: false),
                  ],
                ),
              ],
            ),
          ),
          Gap(Layout.getHeight(25)),
          Center(
            child: Text('How to get more miles', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),),
          ),
        ],
      ),
    );
  }
}
