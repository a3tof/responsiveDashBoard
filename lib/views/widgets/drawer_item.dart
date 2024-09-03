import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model, required this.isAcvtive});
  final DrawerItemModel model;
  final bool isAcvtive;
  @override
  Widget build(BuildContext context) {
    return isAcvtive
        ? ActiveDrawerItem(model: model)
        : InActiveDrawerItem(model: model);
  }
}
