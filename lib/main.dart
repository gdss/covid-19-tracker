import 'package:covidtracker/constants.dart';
import 'package:covidtracker/screens/country_details/country_details_screen.dart';
import 'package:covidtracker/screens/home/home_screen.dart';
import 'package:covidtracker/screens/info/info_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: app_title,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/country_details': (context) => CountryDetailsScreen(),
        '/info': (context) => InfoScreen(),
      },
      theme: ThemeData(
        primarySwatch: MaterialColor(
          kPrimarySwatch[500].value,
          {
            50: kPrimarySwatch[50],
            100: kPrimarySwatch[100],
            200: kPrimarySwatch[200],
            300: kPrimarySwatch[300],
            400: kPrimarySwatch[400],
            500: kPrimarySwatch[500],
            600: kPrimarySwatch[600],
            700: kPrimarySwatch[700],
            800: kPrimarySwatch[800],
            900: kPrimarySwatch[900]
          },
        ),
      ),
    ),
  );
}
