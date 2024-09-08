import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          SizedBox(
            height: 20,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
