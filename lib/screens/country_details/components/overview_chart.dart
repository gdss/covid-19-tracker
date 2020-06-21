import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/utils/formatter_util.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartOverView extends StatelessWidget {
  ChartOverView({this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            PieChart(
              PieChartData(
                borderData: FlBorderData(
                  show: false,
                ),
                sectionsSpace: 0,
                centerSpaceRadius: 80,
                sections: showingSections(),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: 'Total Cases\n',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.9),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                TextSpan(
                  text: FormatterUtil.getNumber(country.cases),
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                ),
                TextSpan(
                    text: '\npeople',
                    style: Theme.of(context).textTheme.bodyText1),
              ]),
            ),
          ],
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    int totalCases = country.cases;
    double deaths = ((country.deaths / totalCases) * 100);
    double active = ((country.active / totalCases) * 100);
    double recovered = ((country.recovered / totalCases) * 100);
    return [
      buildPieChartSectionData(deaths, Colors.red),
      buildPieChartSectionData(active, Colors.yellow[800]),
      buildPieChartSectionData(recovered, Colors.green),
    ];
  }

  PieChartSectionData buildPieChartSectionData(double value, Color color) {
    return PieChartSectionData(
      color: color,
      value: value,
      title: '${value.toStringAsFixed(1)}%',
      radius: 50,
      titleStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
