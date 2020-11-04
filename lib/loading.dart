import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff21254A),
      child: Center(
        child: SpinKitRipple(
          color: Color(0xFFEB1555),
          size: 50.0,
        ),
      ),
    );
  }
}
