import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_mobile_layput.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: DashboardMobileLayout(),
            )),
        SizedBox(width: 32),
      ],
    );
  }
}
