import 'package:flutter/material.dart';
import 'package:flutter_myshop/models/BarChartModel.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartScreen extends StatefulWidget {
  @override
  _PieChartScreenState createState() => _PieChartScreenState();
}

class _PieChartScreenState extends State<PieChartScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SfCircularChart(
            title: ChartTitle(text: 'Sales by sales person'),
            legend: Legend(isVisible: true),
            series: <PieSeries<_PieData, String>>[
              PieSeries<_PieData, String>(
                  explode: true,
                  explodeIndex: 0,
                  dataSource: pieData,
                  xValueMapper: (_PieData data, _) => data.xData,
                  yValueMapper: (_PieData data, _) => data.yData,
                  dataLabelMapper: (_PieData data, _) => data.text,
                  dataLabelSettings: DataLabelSettings(isVisible: true)),
            ],
          ),
        ],
      ),
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);
  final String xData;
  final num yData;
  final String text;
}

final List<_PieData> pieData = [
  _PieData(
    "Infomation Technology",
    250,
    "250",
  ),
  _PieData(
    "Doctor",
    20,
    "20",
  ),
  _PieData(
    "Accounting",
    40,
    "40",
  ),
];
