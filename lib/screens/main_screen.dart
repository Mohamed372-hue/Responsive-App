import 'package:flutter/material.dart';
import 'package:resposive_app/screens/dashboard_screen.dart';
import 'package:resposive_app/utils/resposive.dart';
import 'package:resposive_app/widgets/side_menu_widget.dart';
import 'package:resposive_app/widgets/summery_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isdesktop = Resposive().isdesktop(context);
    final istab = Resposive().istablet(context);
  ;

    return Scaffold(
      drawer: !isdesktop
          ? SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isdesktop)
            Expanded(flex: 2, child: SizedBox(child: SideMenuWidget())),
          Expanded(flex: 7, child: SizedBox(child: DashboardScreen())),
          if (isdesktop)
            Expanded(
              flex: 3,
              child: SizedBox(child: SummeryWidget()),
            ),
        ],
      )),
    );
  }
}
