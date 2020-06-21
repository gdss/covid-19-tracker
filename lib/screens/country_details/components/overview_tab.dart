import 'package:covidtracker/constants.dart';
import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/screens/country_details/components/critical_tests.dart';
import 'package:covidtracker/screens/country_details/components/overview_cases.dart';
import 'package:covidtracker/screens/country_details/components/overview_chart.dart';
import 'package:flutter/material.dart';

class OverviewTab extends StatelessWidget {
  OverviewTab({this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          OverviewCases(country: country),
          SizedBox(height: kPadding),
          ChartOverView(country: country),
          SizedBox(height: kPadding * 1.5),
          CriticalAndTests(
            critical: country.critical,
            tests: country.tests,
          ),
        ],
      ),
    );
  }
}
