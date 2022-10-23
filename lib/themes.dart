import 'package:flutter/material.dart';

final kLightTheme = ThemeData.light().copyWith(
  brightness: Brightness.light, //Светлая тема (вторая тема)
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.white, //Цвет фона Scaffold
  //!Настройки текста
  textTheme: TextTheme(
    button: TextStyle(fontSize: 25), //Размер шрифта на кнопках
    bodyText1:
        TextStyle(fontSize: 20), //Размер шрифта Бокового меню (это ListTile)
    bodyText2: TextStyle(
        fontSize:
            20), //Размер шрифта Основного текста, и текста заголовка Нижнего меню, но не RichText и не ListTile
    headline6: TextStyle(fontSize: 20), //Титул SimpleDialog?
    subtitle1: TextStyle(
        fontSize: 20), //Размер основного текста в Нижнем модальном окне
  ),
  //!Настройки FAB
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
    elevation: 8,
    highlightElevation: 5,
// shape: ShapeBorder(),
  ),
);

final kDarkTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark, //Темная тема (первая тема)
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.black, //Цвет фона Scaffold
  //!Настройки текста
  textTheme: TextTheme(
    button: TextStyle(fontSize: 25), //Размер шрифта на кнопках
    bodyText1:
        TextStyle(fontSize: 20), //Размер шрифта Бокового меню (это ListTile)
    bodyText2: TextStyle(
        fontSize:
            20), //Размер шрифта Основного текста, и текста заголовка Нижнего меню, но не RichText и не ListTile
    headline6: TextStyle(fontSize: 20), //Титул SimpleDialog?
    subtitle1: TextStyle(
        fontSize: 20), //Размер основного текста в Нижнем модальном окне
  ),
  //!Настройки FAB
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.black,
    elevation: 8,
    highlightElevation: 5,
// shape: ShapeBorder(),
  ),
);
