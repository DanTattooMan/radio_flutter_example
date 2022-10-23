import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:radio_flutter_example/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: S.of(context).about_text_1,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              TextSpan(
                text: '@dandesignman',
                style: TextStyle(color: Colors.blue, fontSize: 25),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch('https://www.instagram.com/dandesignman');
                  },
              ),
              TextSpan(
                text: S.of(context).about_text_2,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              TextSpan(
                text: '@dantattoomann',
                style: TextStyle(color: Colors.blue, fontSize: 25),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch('https://www.instagram.com/dantattoomann');
                  },
              ),
              TextSpan(
                text: S.of(context).about_text_3,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              TextSpan(
                text: '@sabiredgorov',
                style: TextStyle(color: Colors.blue, fontSize: 25),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch('https://www.instagram.com/sabiredgorov');
                  },
              ),
              TextSpan(
                text: S.of(context).about_text_4,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
