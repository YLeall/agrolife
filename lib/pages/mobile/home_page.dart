import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var teste = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[300],

      drawer: Drawer(
        width: teste,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [

            ListTile(
              leading: const Icon(Icons.arrow_back),
              title: const Text('Sair'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        )
      ),

      appBar: AppBar(

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
    );
  }
}