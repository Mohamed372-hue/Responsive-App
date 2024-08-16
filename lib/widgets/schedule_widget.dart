import 'package:flutter/material.dart';
import 'package:resposive_app/widgets/custom_card_widget.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Scheduled",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20,
        ),
        buildschedulecard("Yoga", "Today 9Pm-10Pm"),
        buildschedulecard("Yoga", "Today 9Pm-10Pm"),
        buildschedulecard("Yoga", "Today 9Pm-10Pm"),
      ],
    );
  }

  Padding buildschedulecard(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: CustomCardWidget(
          color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            subtitle: Text(subtitle,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 13)),
            trailing: Icon(Icons.more, color: Colors.white),
          )),
    );
  }
}
