import 'package:agrolife/responsive/mobile_scaffold.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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


      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            
            const SizedBox(height: 30,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Esqueceu a senha?',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Text(
                  'Digite seu endereço de e-mail',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Style.colorTextErase,
                  ),
                ),
              ],
            ),

            Form(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email, size: 20,),
                  label: Text(
                    'Endereço de e-mail',
                    style: Style.textInputForgotStyle,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              )
            ),

            const SizedBox(height: 100,),

            Container(
              height: 48,
              decoration: BoxDecoration(
                color: Style.primaryColor,
                borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Text(
                  'Confirmar',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ), 
              ),
            ),

          ],
        ),
      )


    );
  }
}