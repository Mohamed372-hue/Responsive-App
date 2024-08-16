import 'package:flutter/material.dart';
import 'package:resposive_app/widgets/custom_card_widget.dart';

class SmallCardSummeryWidget extends StatelessWidget {
  const SmallCardSummeryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildcolumn('col', '203'),
          buildcolumn('steps', '1026'),
          buildcolumn('distance', '6km'),
          buildcolumn('sleep', '12h'),
        ],
      ),
    );
  }

  Column buildcolumn(String title, String subtitle) {
    return Column(
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.grey)),
        Text(subtitle,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
      ],
    );
  }
}
