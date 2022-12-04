import 'package:agrolife/pages/mobile/home_page.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreenMenu extends StatefulWidget {
  const SplashScreenMenu({super.key});

  @override
  State<SplashScreenMenu> createState() => _SplashScreenMenuState();
}

class _SplashScreenMenuState extends State<SplashScreenMenu> {


  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration (seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ResponsiveLayout(
        mobileScaffold: const HomePage(),
        tabletScaffold: const TabletScaffold(),
      ))
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: primary),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            //Image.asset('lib/images/logo.png', height: 150,),
            Image.asset('lib/images/logoCorte.png', height: 150,),
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 3,
                width: 100,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
              ),
            ),

            Text('AGROLIFE', style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 29,
              fontWeight: FontWeight.w500,
            ))

          ],
        ),
      ),
      
    );
  }
}