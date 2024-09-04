import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});
  static const items = [
    AllExpensesItemModel(
        title: 'Balance',
        image: Assets.imagesBalance,
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        title: 'Income',
        image: Assets.imagesIncome,
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        title: 'Expenses',
        image: Assets.imagesExpenses,
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(itemModel: item),
            ),
          );
        } else {
          return Expanded(
            child: AllExpensesItem(itemModel: item),
          );
        }
      }).toList(),
    );
  }
}
