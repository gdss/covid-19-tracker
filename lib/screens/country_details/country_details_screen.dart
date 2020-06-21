import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/screens/country_details/components/body.dart';
import 'package:flutter/material.dart';

class CountryDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;

    Country country = data['country'];
    int ranking = data['ranking'];

    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Body(
            country: country,
            ranking: ranking,
          ),
        ),
      ),
    );
  }
}
