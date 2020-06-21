import 'package:covidtracker/constants.dart';
import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/utils/formatter_util.dart';
import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  AboutTab({this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
                height: 1.5,
              ),
          children: [
            TextSpan(
              text: country.country,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: ' is a country/region localized in ',
            ),
            TextSpan(
              text: country.continent,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ' and its population is '),
            TextSpan(
              text: FormatterUtil.getNumber(country.population),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ' people.'),
          ],
        ),
      ),
    );
  }
}
