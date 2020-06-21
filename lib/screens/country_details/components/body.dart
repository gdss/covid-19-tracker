import 'package:covidtracker/constants.dart';
import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/screens/country_details/components/header.dart';
import 'package:covidtracker/screens/country_details/components/about_tab.dart';
import 'package:covidtracker/screens/country_details/components/overview_tab.dart';
import 'package:covidtracker/screens/country_details/components/more_info_tab.dart';
import 'package:covidtracker/screens/country_details/components/view_mode_list.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final Country country;
  final int ranking;

  Body({this.country, this.ranking});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _viewModeSelected = 0;
  double initial, distance;

  Widget buildViewModeTab() {
    switch (_viewModeSelected) {
      case 0:
        return OverviewTab(country: widget.country);
      case 1:
        return MoreInfoTab(country: widget.country);
      case 2:
        return AboutTab(country: widget.country);
      default:
        return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Header(country: widget.country),
        SizedBox(height: kPadding),
        ViewModeList(
            press: (index) {
              setState(() {
                _viewModeSelected = index;
              });
            },
            countryName: widget.country.country),
        Expanded(
          child: SingleChildScrollView(
            child: buildViewModeTab(),
          ),
        ),
      ],
    );
  }
}
