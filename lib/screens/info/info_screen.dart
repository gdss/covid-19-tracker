import 'package:covidtracker/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kPadding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: [
                    TextSpan(
                      text: 'All data is provided by ',
                    ),
                    TextSpan(
                      text: 'Novel COVID API',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '\nhttps://disease.sh/',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          print('clicou');
                        },
                    ),
                    TextSpan(text: '\n\nApp made with '),
                    TextSpan(
                      text: 'Flutter',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '\nhttps://flutter.dev/',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Theme.of(context).primaryColor.withOpacity(0.7),
                    ),
                children: [
                  TextSpan(
                    text: 'Developed by Geyson',
                    style: TextStyle(
                      height: 2,
                    ),
                  ),
                  TextSpan(
                    text: '\ngeysondaniel@gmail.com',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        '\n\nIf you have any question, please feel free to send me an email',
                    style: TextStyle(fontSize: 10),
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
