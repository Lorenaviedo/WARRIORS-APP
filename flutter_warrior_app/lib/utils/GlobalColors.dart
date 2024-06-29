import 'dart:ui';

import 'package:hexcolor/hexcolor.dart';

class GlobalColors {
  // Main colors: black, white, orange(FFBC04)
  static Color primaryColor = const Color.fromRGBO(186, 13, 13, 0.5);
  static HexColor darkColor = HexColor('#000000');
  static HexColor lightColor = HexColor('#FFFFFF');
  static Color bgDarkColor = const Color.fromRGBO(0, 0, 0, 0.2);

  // Text colors with degradation:
  static HexColor textColorLight = HexColor('#FFFFFF');
  static HexColor textColorGrey = HexColor('#AFACAC');

  // Icon colors:
  static Color iconBgColor1 = const Color.fromRGBO(255, 188, 4, 0.06);
  static Color iconColorSolid1 = const Color.fromRGBO(232, 39, 39, 1);
  static Color iconColorSolid2 = const Color.fromRGBO(27, 143, 46, 1);

  // Btns colors:
  static HexColor btnColor1 = HexColor('FFBB00');

  // Borders colors:
  static Color borderColor1 = const Color.fromRGBO(0, 0, 0, 0.29);
  static Color borderColor5 = const Color.fromRGBO(0, 0, 0, 0.3);
  static Color borderColor2 = const Color.fromRGBO(217, 217, 217, 0.8667);
  static Color borderColor3 = const Color.fromRGBO(217, 217, 217, 0.12);
}
