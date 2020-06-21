import 'package:flutter/material.dart';

class SortBy extends StatefulWidget {
  final Map<String, String> sortByMap = {
    'Total cases': 'cases',
    'Total deaths': 'deaths',
    'Total recovered': 'recovered',
    'Total active': 'active',
    'Total critical': 'critical',
    'Total tests': 'tests',
    'Today cases': 'todayCases',
    'Today deaths': 'todayDeaths',
    'Today recovered': 'todayRecovered',
    'Cases per million': 'casesPerOneMillion',
    'Ceaths per million': 'deathsPerOneMillion',
    'Recovered per million': 'recoveredPerOneMillion',
    'Active per million': 'activePerOneMillion',
    'Critical per million': 'criticalPerOneMillion',
    'Tests per million': 'testsPerOneMillion',
  };

  final Function getData;

  final String value;

  SortBy({this.getData, this.value});

  @override
  _SortByState createState() => _SortByState();
}

class _SortByState extends State<SortBy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4, right: 4),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.1, 0.5),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.sort,
              ),
              SizedBox(width: 10),
              Text(
                'Sort by',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward, size: 13),
          DropdownButton(
            value: widget.value,
            underline: SizedBox(),
            onChanged: (value) {
              widget.getData(sort: value);
            },
            items: widget.sortByMap.entries.map((sortBy) {
              return DropdownMenuItem(
                value: sortBy.value,
                child: Text(
                  sortBy.key,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
