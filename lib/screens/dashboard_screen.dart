import 'package:flutter/material.dart';
import 'package:resposive_app/utils/resposive.dart';
import 'package:resposive_app/widgets/activaty_details_widget.dart';
import 'package:resposive_app/widgets/bar_graph_widget.dart';
import 'package:resposive_app/widgets/header_widget.dart';
import 'package:resposive_app/widgets/line_chart_card.dart';
import 'package:resposive_app/widgets/summery_widget.dart';

import '../constant/const.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const HeaderWidget(),
            const SizedBox(
              height: 18,
            ),
            const ActivatyDetailsWidget(),
            const SizedBox(
              height: 18,
            ),
            Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: cardBackgroundColor),
                child: const LineChartCard()),
            const SizedBox(
              height: 18,
            ),
            Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: cardBackgroundColor),
                child: const BarChartSample5()),
            const SizedBox(
              height: 20,
            ),
            if (!Resposive().isdesktop(context)) const SummeryWidget(),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
