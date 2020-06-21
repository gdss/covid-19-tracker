import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/screens/home/components/country_card.dart';
import 'package:flutter/material.dart';

class CountryList extends StatelessWidget {
  final List<Country> countryList;

  CountryList({this.countryList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: countryList.length,
          itemBuilder: (context, index) {
            return CountryCard(
              country: countryList[index],
              ranking: index + 1,
            );
          }),
    );
  }
}
