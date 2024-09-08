class TransacationModel {
  final String title, date, amount;
  final bool isWithdrawel;

  const TransacationModel(
      {required this.isWithdrawel,
      required this.title,
      required this.date,
      required this.amount});
}
