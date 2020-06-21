import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/screens/home/components/country_list.dart';
import 'package:covidtracker/screens/home/components/sort_by.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final List<Country> countryList;
  final String sort;
  final Function getData;

  Body({this.countryList, this.sort, this.getData});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              SortBy(getData: getData, value: sort),
              SizedBox(height: 10),
              CountryList(countryList: countryList),
            ],
          ),
        ),
      ],
    );
  }
}
