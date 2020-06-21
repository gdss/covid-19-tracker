import 'package:cached_network_image/cached_network_image.dart';
import 'package:covidtracker/constants.dart';
import 'package:covidtracker/models/country_model.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    @required this.country,
  });

  final Country country;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Hero(
            tag: country.country,
            child: Container(
              height: size.height * 0.2 - 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(country.flagURL),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.8),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 50,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                border: Border.all(color: Theme.of(context).primaryColorLight),
                boxShadow: [kBoxShadow],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '${country.country}',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColorDark),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: BackButton(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
