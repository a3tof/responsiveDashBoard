import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.36 : null,
          value: 22,
          radius: activeIndex == 0 ? 50 : 40,
          title: activeIndex == 0 ? 'Other' : '22%',
          titleStyle: AppStyle.styleMedium16(context).copyWith(
            color: activeIndex == 0 ? null : Colors.white,
          ),
          color: const Color(0xFFE2DECD),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.36 : null,
          value: 20,
          title: activeIndex == 1 ? 'Product royalti' : '20%',
          titleStyle: AppStyle.styleMedium16(context).copyWith(
            color: activeIndex == 1 ? null : Colors.white,
          ),
          radius: activeIndex == 1 ? 50 : 40,
          color: const Color(0xFF064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.36 : null,
          value: 25,
          radius: activeIndex == 2 ? 50 : 40,
          title: activeIndex == 2 ? 'Design product' : '25%',
          titleStyle: AppStyle.styleMedium16(context).copyWith(
            color: activeIndex == 2 ? null : Colors.white,
          ),
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.36 : null,
          value: 40,
          radius: activeIndex == 3 ? 50 : 40,
          title: activeIndex == 3 ? 'Design service' : '40%',
          titleStyle: AppStyle.styleMedium16(context).copyWith(
            color: activeIndex == 3 ? null : Colors.white,
          ),
          color: const Color(0xFF208CC8),
        ),
      ],
    );
  }
}
