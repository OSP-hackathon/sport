import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<double> ratings = [200, 300, 250, 400, 350, 450, 350];
List<String> months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'];

LineChartData mainData() {
  return LineChartData(
      lineTouchData: LineTouchData(enabled: true),
      gridData: FlGridData(
        show: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        drawVerticalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(sideTitles: bottomTitles),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(
          color: const Color(0xff37434d),
          width: 1,
        ),
      ),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 500,
      lineBarsData: [
        LineChartBarData(
            spots: [
              FlSpot(0, ratings[0]),
              FlSpot(1, ratings[1]),
              FlSpot(2, ratings[2]),
              FlSpot(3, ratings[3]),
              FlSpot(4, ratings[4]),
              FlSpot(5, ratings[5]),
              FlSpot(6, ratings[6]),
            ],
            isCurved: true,
            color: const Color(0xff4af699),
            barWidth: 5,
            isStrokeCapRound: true),
      ]);
}

SideTitles get bottomTitles => SideTitles(
    showTitles: true,
    reservedSize: 22,
    getTitlesWidget: (value, meta) {
      switch (value.toInt()) {
        case 0:
          return Text('Jan');
        case 1:
          return Text('Feb');
        case 2:
          return Text('Mar');
        case 3:
          return Text('Apr');
        case 4:
          return Text('May');
        case 5:
          return Text('Jun');
        case 6:
          return Text('Jul');
        case 7:
          return Text('Aug');
        case 8:
          return Text('Sep');
        case 9:
          return Text('Oct');
        case 10:
          return Text('Nov');
        case 11:
          return Text('Dec');
      }
      return Text('');
    });
