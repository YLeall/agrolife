import 'package:agrolife/pages/mobile/create_account.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
import 'package:agrolife/utils/style.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;

    return Scaffold(

      backgroundColor: primary,

      //appBar: myAppBarMobile,

      //drawer: myDrawerMobile,

      body: ListView(
        children: [
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 70),
                child: Image.asset('lib/images/logoCorte.png', height: 190,)
              ),
        
              //Text('$hei'),
              //Text('$wid'),
        
              const SizedBox(height: 45,),
        
            
        
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
        
                    Text('Bem vindo ao', style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 36, 
                      fontWeight: FontWeight.w500),
                    ),
        
                    Text('AgroLife', style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 36, 
                      fontWeight: FontWeight.w500),
                    )
        
                ]),
              ),
        
              Container(
                child: Column(
                  children: [
                    Text("Seu app de gerenciamento agro. Monitore seu",style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 14, 
                      fontWeight: FontWeight.w300),
                    ),
                    Text("  estoque, vendas e funcionários em um só lugar.",style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 14, 
                      fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
        
              const SizedBox(height: 100,),
        
              Center(
                child: Container(
                  width: 348,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)
                  ),
        
                  child: Center(
                    child: Text('Fazer Login',style: GoogleFonts.poppins(
                      color: primary, 
                      fontSize: 16, 
                      fontWeight: FontWeight.w300),
                    )
                  ),
                ),
              ),
        
              const SizedBox(height: 20,),
        
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context){
                    return ResponsiveLayout(
                      mobileScaffold: const CreateAccount(),
                      tabletScaffold: const TabletScaffold(),
                    );
                  })),
                child: Container(
                  child: Center(
                    child: Text('Criar uma conta',style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 16, 
                      fontWeight: FontWeight.w300),
                    )
                  ),
                ),
              ),
        
            ] 
          ),
        ]
      ),

    );
  }
}

