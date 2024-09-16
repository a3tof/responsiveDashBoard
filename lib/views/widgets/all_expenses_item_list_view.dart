import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    const AllExpensesItemModel(
        title: 'Balance',
        image: Assets.imagesBalance,
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        title: 'Income',
        image: Assets.imagesIncome,
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        title: 'Expenses',
        image: Assets.imagesExpenses,
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isSelect: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isSelect: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isSelect: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
