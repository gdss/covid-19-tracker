import 'package:cached_network_image/cached_network_image.dart';
import 'package:covidtracker/models/country_model.dart';
import 'package:covidtracker/utils/formatter_util.dart';
import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  final Country country;
  final int ranking;

  CountryCard({this.country, this.ranking});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, '/country_details',
              arguments: {'country': country, 'ranking': ranking});
        },
        title: Text(
          '#$ranking ${country.country}',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text('${FormatterUtil.getNumber(country.cases)} cases'),
        trailing: Icon(Icons.arrow_forward_ios),
        leading: Hero(
          tag: country.country,
          child: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(country.flagURL)),
        ),
      ),
    );
  }
}
