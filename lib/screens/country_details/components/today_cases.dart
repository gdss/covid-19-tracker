import 'package:covidtracker/constants.dart';
import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/screens/country_details/components/case_card.dart';
import 'package:flutter/material.dart';

class TodayCases extends StatelessWidget {
  TodayCases({this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
          child: Wrap(
            spacing: kPadding / 2,
            runSpacing: kPadding / 2,
            children: <Widget>[
              CaseCard(
                title: 'Today Infected',
                cases: country.todayCases,
                color: Colors.grey,
                expanded: true,
              ),
              CaseCard(
                title: 'Today Deaths',
                cases: country.todayDeaths,
                color: Colors.red,
                expanded: true,
              ),
              CaseCard(
                title: 'Today Recovered',
                cases: country.todayRecovered,
                color: Colors.green,
                expanded: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
