import 'package:flutter/material.dart';
import 'package:resposive_app/constant/const.dart';
import 'package:resposive_app/widgets/schedule_widget.dart';
import 'package:resposive_app/widgets/small_card_summery_widget.dart';

import 'pie_chart_widget.dart';

class SummeryWidget extends StatelessWidget {
  const SummeryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: cardBackgroundColor,
        padding: EdgeInsets.only(left: 5),
        child: const Padding(
          padding: EdgeInsets.only(right: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              //pie section//
              PieChartSample2(),
              SizedBox(
                height: 30,
              ),
              //small card
              SmallCardSummeryWidget(),
              SizedBox(
                height: 50,
              ),
              //scheduled

              ScheduleWidget()
            ],
          ),
        ),
      ),
    );
  }
}
