import 'package:ArchSearch/welcome.dart';
import 'package:flutter/material.dart';
void main() => runApp(Hackathon());

class Hackathon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff21254A),
        scaffoldBackgroundColor: Color(0xff21254A),
      ),
      home: welcome(),
      debugShowCheckedModeBanner:false,
    );
  }
}
class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

