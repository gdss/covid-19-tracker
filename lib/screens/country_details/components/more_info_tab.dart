import 'package:covidtracker/constants.dart';
import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/screens/country_details/components/case_card.dart';
import 'package:covidtracker/screens/country_details/components/today_cases.dart';
import 'package:flutter/material.dart';

class MoreInfoTab extends StatelessWidget {
  MoreInfoTab({this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TodayCases(country: country),
          SizedBox(height: kPadding * 1.5),
          buildTitle('Cases per Million', context),
          SizedBox(height: kPadding),
          Center(
            child: Wrap(
              spacing: kPadding / 2,
              runSpacing: kPadding / 2,
              children: <Widget>[
                CaseCard(
                  title: 'Infected',
                  cases: country.casesPerOneMillion.round(),
                  color: Colors.grey,
                  subtitle: 'people per million',
                ),
                CaseCard(
                  title: 'Deaths',
                  cases: country.deathsPerOneMillion.round(),
                  color: Colors.red,
                  subtitle: 'people per million',
                ),
                CaseCard(
                  title: 'Active',
                  cases: country.activePerOneMillion.round(),
                  color: Colors.yellow[800],
                  subtitle: 'people per million',
                ),
                CaseCard(
                  title: 'Recovered',
                  cases: country.recoveredPerOneMillion.round(),
                  color: Colors.green,
                  subtitle: 'people per million',
                ),
                CaseCard(
                  title: 'Critical',
                  cases: country.criticalPerOneMillion.round(),
                  color: Colors.grey,
                  subtitle: 'people per million',
                ),
                CaseCard(
                  title: 'Tests',
                  cases: country.testsPerOneMillion.round(),
                  color: Colors.blue,
                  subtitle: 'people per million',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTitle(String title, BuildContext context) {
    return Center(
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(fontWeight: FontWeight.bold),
        textAlign: TextAlign.start,
      ),
    );
  }
}
