import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardHomePage extends StatelessWidget {

  final String titleCard;
  final String subTitleCard;
  final String imagePath;

  const CardHomePage({
    required this.titleCard, 
    required this.subTitleCard,
    required this.imagePath
    }
  );


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        width: 146,
        height: 115,
        decoration: BoxDecoration(
          color: Style.primaryColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color:  Style.colorBorderCardHomePage,
            width: 1
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(1.0, 2.0),
              blurRadius: 6.0,
              spreadRadius: 1.0
            ),
          
          ]

        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                width: 48,
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Style.colorBorderCardHomePage,
                    width: 1
                  )

                ),
                
                //child: Image.asset('lib/images/icon_compras.png', width: 10,),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          imagePath
                        ),
                        fit: BoxFit.fill,
                      )
                    ),
                  ),
                ),

              ),

              Text(
                titleCard,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              
              Text(
                subTitleCard,
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}