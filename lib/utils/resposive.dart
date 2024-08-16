import 'package:flutter/material.dart';

class Resposive {
  bool ismobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  bool istablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 600 &&
        MediaQuery.of(context).size.width < 1010;
  }

  bool isdesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 1010;
  }
}
