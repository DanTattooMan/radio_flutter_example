import 'package:flutter/material.dart';
import 'dart:math' as Math;

class WhiteDragon extends StatefulWidget {
  @override
  _WhiteDragonState createState() => _WhiteDragonState();
}

class _WhiteDragonState extends State<WhiteDragon>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> rotation;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 16000));
    rotation = Tween(begin: 0.0, end: 2 * Math.pi).animate(controller);
    controller.addListener(() {
      // print('Status:${controller.status}');
      // if (controller.status == AnimationStatus.completed) {
      //   controller.reverse();
      // }
      // else if (_controller.status == AnimationStatus.dismissed) {
      //   _controller.forward();
      // }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // @override
  // Widget build(BuildContext context) {
  //   controller.repeat();
  //   return AnimatedBuilder(
  //     animation: controller,
  //     builder: (context, child) {
  //       return Transform.rotate(angle: rotation.value, child: RadioStation());
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    controller.repeat();
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.rotate(angle: rotation.value, child: FavoritImage());
      },
    );
  }
  
}

// class RadioStation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Icon(
//         Icons.pause_circle_filled,
//         size: 110,
//         color: Colors.black,
//       ),
//       decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
//         // BoxShadow(
//         //     color: Colors.blue[300],
//         //     blurRadius: _animation.value,
//         //     spreadRadius: _animation.value)
//       ]),

//       // onLongPress: () {
//       // FlutterRadio.playOrPause(url: streamUrl);
//       // playingStatus();
//       // },
//     );
//   }
// }

class FavoritImage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
    'assets/images/tattoo_white.png'
    
        ),
        // decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        //   BoxShadow(
        //     color: Colors.white,
        //     blurRadius: 25,
        //     spreadRadius: 10
        //   ),
        // ]),
      );
  }
}
