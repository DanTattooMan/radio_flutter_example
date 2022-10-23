// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `DanTattooMan`
  String get title {
    return Intl.message(
      'DanTattooMan',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `RADIO ONLINE`
  String get subtitle {
    return Intl.message(
      'RADIO ONLINE',
      name: 'subtitle',
      desc: '',
      args: [],
    );
  }

  /// `About project`
  String get about {
    return Intl.message(
      'About project',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Theme light/dark`
  String get theme {
    return Intl.message(
      'Theme light/dark',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Animation disable/enable`
  String get anim {
    return Intl.message(
      'Animation disable/enable',
      name: 'anim',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `This app is compiled by `
  String get about_text_1 {
    return Intl.message(
      'This app is compiled by ',
      name: 'about_text_1',
      desc: '',
      args: [],
    );
  }

  /// ` for all OF YOU, and especially for `
  String get about_text_2 {
    return Intl.message(
      ' for all OF YOU, and especially for ',
      name: 'about_text_2',
      desc: '',
      args: [],
    );
  }

  /// ` , and then `
  String get about_text_3 {
    return Intl.message(
      ' , and then ',
      name: 'about_text_3',
      desc: '',
      args: [],
    );
  }

  /// ` asked him once: 'Here you are a developer, and you have made at least one mobile app?)'So here is answer for you, Sabir))). All the best!`
  String get about_text_4 {
    return Intl.message(
      ' asked him once: \'Here you are a developer, and you have made at least one mobile app?)\'So here is answer for you, Sabir))). All the best!',
      name: 'about_text_4',
      desc: '',
      args: [],
    );
  }

  /// `For all comments, questions, and suggestions, be sure to write to the developer.`
  String get feedback_text {
    return Intl.message(
      'For all comments, questions, and suggestions, be sure to write to the developer.',
      name: 'feedback_text',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}