import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class DraftPage extends StatelessWidget {
  final Widget body;

  DraftPage({this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children : [ClipPath(
            clipper: WaveClipperTwo(flip: true),
            child: Container(
              height: 260,
              color: Color(0xff101014),
              child: Center(child: Text("")),
            ),
          ),body]),
    );
  }
}