import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transacation_model.dart';
import 'package:responsive_dash_board/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransacationModel(
        isWithdrawel: true,
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: '\$20,129'),
    TransacationModel(
        isWithdrawel: false,
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: '\$2,000'),
    TransacationModel(
        isWithdrawel: false,
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: '\$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: TransactionItem(
            transactionModel: items[index],
          ),
        );
      },
    );
  }
}
