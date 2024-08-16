import 'package:flutter/material.dart';
import 'package:resposive_app/data/activaty_details_data.dart';
import 'package:resposive_app/utils/resposive.dart';
import 'package:resposive_app/widgets/custom_card_widget.dart';

class ActivatyDetailsWidget extends StatelessWidget {
  const ActivatyDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ActivatyDetailsData();
    final ismobile = Resposive().ismobile(context);
    return SizedBox(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ismobile ? 2 : 4,
            mainAxisSpacing: 12.0,
            crossAxisSpacing: ismobile ? 12 : 15.0,
          ),
          itemCount: 4,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            return CustomCardWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    data.data[index].icon.toString(),
                    width: 30,
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      data.data[index].value.toString(),
                      style: const TextStyle(
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    data.data[index].title.toString(),
                    style: const TextStyle(
                        fontSize: 13,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
