
import 'package:agrolife/pages/mobile/bottom_bar.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
import 'package:agrolife/utils/card_notification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PageNotifications extends StatelessWidget {
  const PageNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[300],

      appBar: AppBar(

        iconTheme: const IconThemeData(color: Colors.black),

        elevation: 0,

        backgroundColor: Colors.grey[300],

        //  leading: GestureDetector(
        //   onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
        //     builder: (context){
        //     return ResponsiveLayout(
        //         mobileScaffold: const BottomBar(),
        //         tabletScaffold: const TabletScaffold(),
        //     );
        //   })),
        //   child: const Icon(Icons.arrow_back)
        // ),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return ResponsiveLayout(
                      mobileScaffold: const BottomBar(),
                      tabletScaffold: const TabletScaffold(),
                    );
                  }
                )
              ),
              child: const Icon(Icons.arrow_back),
            ),

            Text(
              'Notificações', 
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
            ),

            const Icon(Icons.help_outline),

          ],
        )
      ),


      body: Column(
        children: [
          
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              itemBuilder: ((context, index) {
                return const CardNotification();
              })
            ),
          ),
        ]
      ),

    


    );
  }
}