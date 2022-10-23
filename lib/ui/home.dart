// import 'dart:async';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:radio_flutter_example/model/radio_record_channel.dart';
// import 'package:radio_flutter_example/model/radio_record_player.dart';
// import 'package:radio_flutter_example/model/radio_record_song_provider.dart';

// class HomePage2 extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage2> with TickerProviderStateMixin {
//   RadioRecordSongProvider _provider;
//   RadioRecordPlayer _player;

//   @override
//   void initState() {
//     super.initState();
//     _provider = RadioRecordSongProvider();
//     _player = RadioRecordPlayer();
//     // Timer.periodic(
//     //     Duration(seconds: 5),
//     //     (timer) => setState(() {
//     //           _provider.updateSongByCurrentChannel();
//     //         }));
//   }

//   Widget build(BuildContext context) {
//     var drawerOptions = <Widget>[];
//     var iterableElements = _provider.radioRecordChannels.values;
//     var channelList = iterableElements.toList();
//     channelList.sort((c1, c2) => c1.channelName.compareTo(c2.channelName));

//     for (int i = 0; i < iterableElements.length; i++) {
//       var channel = channelList[i];
//       var backgroundColor = channel.channelName.toString() ==
//               _player.channel.channelName.toString()
//           ? Colors.black38
//           : Colors.black;

    //   drawerOptions.add(Container(
    //     decoration: BoxDecoration(color: backgroundColor),
    //     child: ListTile(
    //       title: Text(
    //         channel.channelName,
    //         style: TextStyle(color: Colors.green),
    //       ),
    //       onTap: () => _onSelectItem(channel),
    //     ),
    //   ));
    // }

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('data'),
    //   ),
    //   drawer: Drawer(
    //     child: ListView(
    //       padding: EdgeInsets.zero,
    //       children: [
    //         DrawerHeader(
    //           decoration: BoxDecoration(color: Colors.black),
    //           child: Center(
    //             child: Text(
    //               _provider.getCurrentChannel().channelName,
    //               style: TextStyle(fontSize: 30, color: Colors.white),
    //             ),
    //           ),
    //         ),
    //         Column(children: drawerOptions),
    //       ],
    //     ),
    //   ),
      // body: GestureDetector(
      //   onTap: () => _player.play(_provider.getCurrentChannel()),
      //   onDoubleTap: () => _player.pause(),
      //   child: Stack(children: [
          // Container(
            // decoration: BoxDecoration(
              // image: DecorationImage(
                // image: NetworkImage(_provider.currentSong.image ?? ""),
                // fit: BoxFit.fitHeight,
              // ),
            // ),
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          //     child: Container(
          //       decoration:
          //           BoxDecoration(color: Colors.black.withOpacity(0.75)),
          //     ),
          //   ),
          // ),
          // Column(
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.all(20),
          //       child: Card(
          //         shape: Border.all(
          //             color: Colors.white,
          //             width: 2.0,
          //             style: BorderStyle.solid),
          //         child: Image.network(_provider.currentSong.image ?? ""),
          //       ),
          //     ),
  //             Padding(
  //               padding: EdgeInsets.only(left: 24, top: 30),
  //               child: Align(
  //                 alignment: Alignment.centerLeft,
  //                 child: Text(
  //                   _provider.currentSong.title ??
  //                       _provider.getCurrentChannel().channelName,
  //                   style: TextStyle(color: Colors.white, fontSize: 24),
  //                 ),
  //               ),
  //             ),
  //             Padding(
  //               padding: EdgeInsets.only(left: 24, top: 8),
  //               child: Align(
  //                 alignment: Alignment.centerLeft,
  //                 child: Text(
  //                   _provider.currentSong.artist ??
  //                       _provider.getCurrentChannel().channelName,
  //                   style: TextStyle(color: Colors.white, fontSize: 24),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ]),
  //     ),
  //   );
  // }

//   _onSelectItem(RadioRecordChannel channel) {
//     setState(() {
//       _provider.currentChannel = channel.radioRecordChannelName;
//       _player.stop();
//       _player.play(_provider.getCurrentChannel());
//     });
//     Navigator.pop(context);
//   }
// }
