import 'package:flutter/material.dart';
import 'package:resposive_app/constant/const.dart';
import 'package:resposive_app/utils/resposive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Row(
        children: [
          if (!Resposive().isdesktop(context))
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Icon(
                  Icons.menu,
                  size: 25,
                  color: Colors.grey,
                ),
              ),
            ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                fillColor: cardBackgroundColor,
                contentPadding: const EdgeInsets.symmetric(vertical: 5),
                hintText: 'Search',
                prefixIcon: const Icon(
                  Icons.search,
                  size: 21,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          if (Resposive().ismobile(context))
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  '$iconpath/sleep.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
        ],
      ),
    );
  }
}
