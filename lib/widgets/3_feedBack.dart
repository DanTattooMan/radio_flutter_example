import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:radio_flutter_example/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
       child: RichText(
         text: TextSpan(
           children: [
             TextSpan(
               text: S.of(context).feedback_text,
               style: TextStyle(color: Colors.black, fontSize: 20),
             ),
             TextSpan(
               text: '\nInstagram:\n',
               style: TextStyle(color: Colors.black, fontSize: 20),
             ),
             TextSpan(
               text: '@dandesignman\n',
               style: TextStyle(color: Colors.blue, fontSize: 20),
               recognizer: TapGestureRecognizer()
                 ..onTap = () {
                   launch('https://www.instagram.com/dandesignman');
                 },
             ),
            TextSpan(
               text: 'ВК:\n',
               style: TextStyle(color: Colors.black, fontSize: 20),
             ),
             TextSpan(
               text: '@denisot\n',
               style: TextStyle(color: Colors.blue, fontSize: 20),
               recognizer: TapGestureRecognizer()
                 ..onTap = () {
                   launch('https://www.vk.com/denisot');
                 },
             ),
             TextSpan(
               text: 'mail:\n',
               style: TextStyle(color: Colors.black, fontSize: 20),
             ),
             TextSpan(
               text: 'otchichenkodp@gmail.com\n',
               style: TextStyle(color: Colors.blue, fontSize: 20),
               recognizer: TapGestureRecognizer()
                 ..onTap = () {
                   launch('otchichenkodp@gmail.com');
                 },
             ),
            //  TextSpan(
            //    text:
            //        'Обратная связь - это очень полезная связь!)',
            //    style: TextStyle(color: Colors.black, fontSize: 20),
            //  ),
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