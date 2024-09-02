import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/desktop_layput.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AdaptiveLayout(mobileLayout: (context) => const SizedBox(), tabletLayout: (context) => const SizedBox(), desktopLayout:(context) => const DesktopLayput()),
    );
  }
}