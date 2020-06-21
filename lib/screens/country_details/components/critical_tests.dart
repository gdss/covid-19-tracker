import 'package:covidtracker/constants.dart';
import 'package:covidtracker/screens/country_details/components/case_card.dart';
import 'package:flutter/material.dart';

class CriticalAndTests extends StatelessWidget {
  CriticalAndTests({
    this.critical,
    this.tests,
    this.subtitle = 'people',
  });

  final int critical;
  final int tests;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Critical and Tests',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: kPadding),
        Wrap(
          spacing: kPadding / 2,
          runSpacing: kPadding / 2,
          children: <Widget>[
            CaseCard(
              title: 'Critical',
              cases: critical,
              color: Colors.grey,
              subtitle: subtitle,
            ),
            CaseCard(
              title: 'Tests',
              cases: tests,
              color: Colors.blue,
              subtitle: subtitle,
            ),
          ],
        ),
      ],
    );
  }
}
