import 'package:covidtracker/constants.dart';
import 'package:covidtracker/utils/formatter_util.dart';
import 'package:flutter/material.dart';

class CaseCard extends StatelessWidget {
  const CaseCard(
      {Key key,
      this.cases,
      this.color,
      this.title,
      this.expanded = false,
      this.subtitle = 'people'})
      : super(key: key);

  final String title;
  final int cases;
  final Color color;
  final bool expanded;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 105,
      width: expanded ? size.width * 0.8 + kPadding / 2 : size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          kBoxShadow,
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          kPadding / 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color.withOpacity(0.1),
                  ),
                  child: Icon(
                    Icons.ac_unit,
                    color: color,
                    size: 16,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.black26.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: FormatterUtil.getNumber(cases),
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          height: 2,
                        ),
                  ),
                  TextSpan(
                    text: '\n$subtitle',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
