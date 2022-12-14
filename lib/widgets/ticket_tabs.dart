import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/layout.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Layout.getHeight(50)),
          color: Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: Layout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(Layout.getHeight(50))),
                color: Colors.white,
              ),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: Layout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(Layout.getHeight(50))),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
