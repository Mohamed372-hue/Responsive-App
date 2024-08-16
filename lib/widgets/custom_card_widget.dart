import 'package:flutter/material.dart';

import '../constant/const.dart';

class CustomCardWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const CustomCardWidget(
      {super.key, this.color, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color ?? cardBackgroundColor,
      ),
      child:
          Padding(padding: padding ?? const EdgeInsets.all(12.0), child: child),
    );
  }
}
