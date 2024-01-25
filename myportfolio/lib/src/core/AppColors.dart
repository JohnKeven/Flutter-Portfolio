import 'package:flutter/material.dart';

Map<int, Color> colorCodes = {
  50:  const Color.fromRGBO(95, 99, 104, .1),
  100: const Color.fromRGBO(95, 99, 104, .2),
  200: const Color.fromRGBO(95, 99, 104, .3),
  300: const Color.fromRGBO(95, 99, 104, .4),
  400: const Color.fromRGBO(95, 99, 104, .5),
  500: const Color.fromRGBO(95, 99, 104, .6),
  600: const Color.fromRGBO(95, 99, 104, .7),
  700: const Color.fromRGBO(95, 99, 104, .8),
  800: const Color.fromRGBO(95, 99, 104, .9),
  900: const Color.fromRGBO(95, 99, 104, 1),
};

class AppColors {
  Color kSecondColor = Colors.white;
  MaterialColor kSecondColorM = MaterialColor(0x09AF40, colorCodes);
  MaterialColor kPrimaryColorM = MaterialColor(0xFF2271BD, colorCodes);
  //Color brightBackground= const Color(0xff424346);
  //Color darkBackground= const Color(0xff2D2F33);
  //Color brightBackground = const Color.fromRGBO(24, 37, 58, 1.0);
  //Color brightBackground = Color.fromRGBO(24, 37, 58, 1.0);
  Color brightBackground= const Color.fromRGBO(16, 29, 44, 1.0);
  Color darkBackground= const Color.fromRGBO(12, 21, 31, 1.0);
}