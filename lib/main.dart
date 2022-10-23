import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; //Для других языков
import 'dart:async';
import 'package:flutter_radio/flutter_radio.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_flutter_example/themes.dart';
import 'package:radio_flutter_example/ui/home.dart';
import 'package:radio_flutter_example/widgets/3_feedBack.dart';

import 'package:radio_flutter_example/widgets/4_dragon_black_anim.dart';
import 'package:radio_flutter_example/widgets/5_dragon_white_anim.dart';
import 'package:radio_flutter_example/widgets/2_aboutPage.dart';
import 'package:radio_flutter_example/widgets/1_home3.dart';
import 'package:radio_flutter_example/widgets/0_splashscreen.dart';

import 'generated/l10n.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: kLightTheme,
      dark: kDarkTheme,
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) => MaterialApp(
        localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
        theme: light,
        darkTheme: dark,
        title: 'DanTattooMan_Radio_online',
        // initialRoute: '/',
        routes: {
          // '/': (BuildContext context) => MyHomePage(),
          '/about': (BuildContext context) => AboutPage(),
          '/feedback': (BuildContext context) => FeedbackPage(),
          '/home': (BuildContext context) => HomePage(),
          
        },
        debugShowCheckedModeBanner: false,
        home: SplashScreenPage(),
      ),
    );
  }
}

