import 'dart:convert';

import 'package:covidtracker/components/loading.dart';
import 'package:covidtracker/constants.dart';
import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  List<Country> countryList;
  String sort;

  Future<void> _getData({sort = 'cases'}) async {
    setState(() {
      this.countryList = null;
      this.sort = sort;
    });
    Response response = await get('https://disease.sh/v2/countries?sort=$sort');
    List<dynamic> data = jsonDecode(response.body);
    setState(() {
      this.countryList = data.map((e) => Country.fromJson(e)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    if (countryList == null) {
      return Loading();
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(app_title),
        centerTitle: true,
        leading: Icon(Icons.track_changes),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, '/info');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _getData(sort: sort),
        child: Icon(Icons.refresh),
      ),
      body: Body(
        countryList: countryList,
        sort: sort,
        getData: _getData,
      ),
    );
  }
}
