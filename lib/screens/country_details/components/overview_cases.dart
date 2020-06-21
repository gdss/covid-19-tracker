import 'package:covidtracker/constants.dart';
import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/screens/country_details/components/case_card.dart';
import 'package:flutter/material.dart';

class OverviewCases extends StatelessWidget {
  const OverviewCases({
    Key key,
    @required this.country,
  }) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: kPadding / 2,
        runSpacing: kPadding / 2,
        children: <Widget>[
          CaseCard(
            title: 'Infected',
            cases: country.cases,
            color: Colors.grey,
          ),
          CaseCard(
            title: 'Deaths',
            cases: country.deaths,
            color: Colors.red,
          ),
          CaseCard(
            title: 'Active',
            cases: country.active,
            color: Colors.yellow[800],
          ),
          CaseCard(
            title: 'Recovered',
            cases: country.recovered,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
