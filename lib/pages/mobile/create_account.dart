import 'package:agrolife/responsive/mobile_scaffold.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[300],

      appBar: AppBar(

        leading: GestureDetector(
          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context){
            return ResponsiveLayout(
                mobileScaffold: const MobileScaffold(),
                tabletScaffold: const TabletScaffold(),
            );
          })),
          child: const Icon(Icons.arrow_back)
        ),

        iconTheme: const IconThemeData(color: Colors.black),

        elevation: 0,

        backgroundColor: Colors.grey[300],

        title: Row(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset('lib/images/logoVerdeD.png', width: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Text('AGROLIFE', style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: primary
              ),),
            ),
          ],
        ),
        
      ),


      body: Column(
        
        children: [
          
          Container(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('Cadastro', style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
                ),

                Text('Crie sua conta aqui', style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
                ),

                Text('Etapa 1', style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
                ),

              ],
            ),
          ),

        

        ],
      )

    );
  }
}