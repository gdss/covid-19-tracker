import 'package:covidtracker/constants.dart';
import 'package:flutter/material.dart';

class ViewModeList extends StatefulWidget {
  ViewModeList({this.press, this.countryName});

  final Function press;
  final String countryName;

  @override
  _ViewModeListState createState() => _ViewModeListState();
}

class _ViewModeListState extends State<ViewModeList> {
  List<String> _viewModeList;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _viewModeList = [
      'Overview',
      'More Info',
      'About ${widget.countryName}',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildViewMode(index, context),
        itemCount: _viewModeList.length,
      ),
    );
  }

  Widget buildViewMode(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
          widget.press(index);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _viewModeList[index],
              style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 16,
                  color: index == _selectedIndex
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColor.withOpacity(0.5),
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 6,
              width: 25,
              margin: EdgeInsets.only(top: kPadding / 4),
              decoration: BoxDecoration(
                color: index == _selectedIndex
                    ? Theme.of(context).accentColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
