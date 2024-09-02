import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';

class DesktopLayput extends StatelessWidget {
  const DesktopLayput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer())
      ],
    );
  }
}