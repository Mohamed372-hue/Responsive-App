import 'package:flutter/material.dart';
import 'package:resposive_app/data/side_menu_data.dart';

import '../constant/const.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();

    return Container(
      color: cardBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 80),
        child: ListView.builder(
          itemCount: data.menu.length,
          itemBuilder: (BuildContext context, int index) =>
              buildMenuEntyery(data, index),
        ),
      ),
    );
  }

  Widget buildMenuEntyery(SideMenuData data, int index) {
    bool isselected = selectedIndex == index;
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: isselected ? selectionColor : Colors.transparent,
          borderRadius: BorderRadius.circular(6.0)),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            child: Icon(data.menu[index].icon,
                color: isselected ? Colors.black : Colors.grey),
          ),
          Text(
            data.menu[index].title,
            style: TextStyle(
                fontSize: 16,
                color: isselected ? Colors.black : Colors.grey,
                fontWeight: isselected ? FontWeight.bold : FontWeight.normal),
          ),
        ]),
      ),
    );
  }
}
