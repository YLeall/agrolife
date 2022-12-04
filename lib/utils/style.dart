import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primary = Color(0xFF429058);

class Style{

  static Color primaryColor = primary;
  static Color colorInputCreateAccount = const Color (0xFFC1C7D0); 
  static Color colorHintText = const Color(0xFFA0A1A3);
  static Color colorBorderGoogle = const Color(0xFFEAEAEA);
  static Color colorDivider = const Color(0xFFD2D2D2);
  static Color colorTextErase = const Color(0xFFAAAAAA);
  static Color colorInputForgotEmail = const Color (0xFFC1C7D0);
  //static GoogleFonts tste = GoogleFonts();

  static var textInput = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: colorInputCreateAccount,
  );

  static var textMember = GoogleFonts.poppins(
    color: Colors.black, 
    fontSize: 14, 
    fontWeight: FontWeight.w400
  );


  static var textMemberGreen = GoogleFonts.poppins(
    color: primaryColor, 
    fontSize: 14, 
    fontWeight: FontWeight.w400
  );
                    

  static var hintStyle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: colorHintText,
  );


  static var textDividerStyle = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: colorDivider,
  );


  static var textInputForgotStyle = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: colorInputForgotEmail,
  );


  

}