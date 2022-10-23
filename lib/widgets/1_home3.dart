import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_flutter_example/generated/l10n.dart';
import 'package:radio_flutter_example/model/radio_record_channel.dart';
import 'package:radio_flutter_example/model/radio_record_player.dart';
import 'package:radio_flutter_example/model/radio_record_song_provider.dart';
import 'package:radio_flutter_example/widgets/4_dragon_black_anim.dart';
import 'package:radio_flutter_example/widgets/5_dragon_white_anim.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  RadioRecordSongProvider _provider;
  RadioRecordPlayer _player;
  bool isPlaying;
  var pressed = false;
  var presstheme = true;
  var pressanim = false;

  AnimationController _animationController;
  Animation _animation;
  AnimationController _animationOpController;
  Animation _animationOp;

  @override
  void initState() {
    super.initState();
    _provider = RadioRecordSongProvider();
    _player = RadioRecordPlayer();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 2.0, end: 15.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    _animationOpController =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    _animationOpController.repeat(reverse: true);
    _animationOp = Tween(begin: 0.0, end: 1.0).animate(_animationOpController);
  }

  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    var iterableElements = _provider.radioRecordChannels.values;
    var channelList = iterableElements.toList();
    channelList.sort((c1, c2) => c1.channelName.compareTo(c2.channelName));

    for (int i = 0; i < iterableElements.length; i++) {
      var channel = channelList[i];
      var backgroundColor = channel.channelName.toString() ==
              _player.channel.channelName.toString()
          ? Colors.black38
          : Colors.black;

      drawerOptions.add(Container(
        decoration:
            BoxDecoration(color: presstheme ? Colors.black : Colors.white),
        child: ListTile(
          title: Text(
            channel.channelName,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              color: presstheme ? Colors.white : Colors.black,
            ),
          ),
          onTap: () => _onSelectItem(channel),
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (ctx) => IconButton(
            onPressed: () {
              Scaffold.of(ctx).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: !presstheme ? Colors.black : Colors.white,
            ),
          ),
        ),
        actions: [
          Builder(
            builder: (ctx) => IconButton(
              onPressed: () {
                Scaffold.of(ctx).openEndDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: !presstheme ? Colors.black : Colors.white,
              ),
            ),
          ),
        ],
        backgroundColor: !presstheme ? Colors.white : Colors.black,
        title: Center(
          child: Container(
            // color: Colors.yellow,
            child: Column(
              children: [
                Text(
                  S.of(context).title,
                  style: pressanim
                      ? TextStyle(
                          fontWeight: FontWeight.bold,
                          color: presstheme ? Colors.white : Colors.black,
                          fontSize: 25,
                        )
                      : TextStyle(
                          fontWeight: FontWeight.bold,
                          // color: Colors.white,
                          fontSize: 25,
                          // fontFamily: 'EmbossedGermanica',
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = _animation.value * 0.2
                            ..color = presstheme ? Colors.white : Colors.black,
                        ),
                ),
                Text(
                  S.of(context).subtitle,
                  style: TextStyle(
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold,
                    color: presstheme ? Colors.white60 : Colors.black45,
                    fontSize: 18,
                    // fontFamily: 'EmbossedGermanica'
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: 
      // Image.network('https://loremflickr.com/g/320/240/tattoo'),
        Container(
            width: double.infinity,
            height: double.infinity,
            color: presstheme ? Colors.black : Colors.white,
        child: Opacity(
          opacity: pressanim ? 1 : _animationOp.value,
          child: presstheme
              ? Container(
                  child: pressanim
                      ? Image.asset('assets/images/tattoo_white.png')
                      : WhiteDragon(),
                )
              : Container(
                  child: pressanim
                      ? Image.asset('assets/images/tattoo_black.png')
                      : BlackDragon(),
                ),
        ),),
      floatingActionButton: GestureDetector(
        child: Container(margin: EdgeInsets.only(bottom: 30),
          child: Icon(
              pressed
                  ? Icons.pause_circle_filled
                  : Icons.play_circle_filled,
              size: 80,
              color: Colors.white),
          decoration:
              BoxDecoration(shape: BoxShape.circle, boxShadow: [
            pressanim
                ? BoxShadow(
                    color: pressed ? Colors.amber : Colors.green)
                : BoxShadow(
                    color: pressed ? Colors.amber : Colors.green,
                    blurRadius: _animation.value,
                    spreadRadius: _animation.value)
          ]),
        ),
        onTap: () {
          setState(() {
            pressed = !pressed; pressed ? _player.play(_provider.getCurrentChannel()) : _player.pause();
          });
          
        },
        // () => _player.play(_provider.getCurrentChannel()),
        // onDoubleTap: () => _player.pause(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     drawer: Container(
       child: Drawer(
          child: Container(
            color: !presstheme ? Colors.white : Colors.black,
            child: ListView(
                padding: EdgeInsets.only(top: 65, left: 15),
                children: [
                  ListTile(
                    title: Text(
                      S.of(context).about,
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: presstheme ? Colors.white : Colors.black),
                    ),
                    onTap: () => {
                      Navigator.pop(context),
                      Navigator.pushNamed(context, '/about'),
                    },
                  ),
                  ListTile(
                    title: Text(
                      S.of(context).theme,
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: presstheme ? Colors.white : Colors.black),
                    ),
                    onTap: () {
                      setState(() {
                        presstheme = !presstheme;
                        });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      S.of(context).anim,
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: presstheme ? Colors.white : Colors.black),
                    ),
                    onTap: () {
                      setState(() {
                        pressanim = !pressanim;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      S.of(context).feedback,
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: presstheme ? Colors.white : Colors.black),
                    ),
                    onTap: () => {
                      Navigator.pop(context),
                      Navigator.pushNamed(context, '/feedback'),
                    },
                  ),
                ]),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: presstheme ? Colors.black : Colors.white),
              child: Center(
                child: Text(
                  _provider.getCurrentChannel().channelName,
                  style: GoogleFonts.montserrat(
                      fontSize: 30,
                      color: presstheme ? Colors.white : Colors.black),
                ),
              ),
            ),
            Column(children: drawerOptions),
          ],
        ),
      ),
    );
  }

  _onSelectItem(RadioRecordChannel channel) {
    setState(() {
      _provider.currentChannel = channel.radioRecordChannelName;
      _player.stop();
      _player.play(_provider.getCurrentChannel());
    });
    Navigator.pop(context);
  }
}
