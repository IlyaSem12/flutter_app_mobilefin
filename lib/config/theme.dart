import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get appBarStyle {
  return GoogleFonts.lato(
    textStyle:
        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
  );
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
  );
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
  );
}

TextStyle get subtitleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey[600]),
  );
}
