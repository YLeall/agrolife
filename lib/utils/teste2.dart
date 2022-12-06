import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
    
      children: [
        const SizedBox(width: 20,),
        Image.asset('lib/images/logoVerdeD.png', width: 35,),
        Padding(
          padding: const EdgeInsets.only(right: 45),
          child: Text('AGROLIFE', style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: primary
          ),),
        ),
      ],
    );
  }
}