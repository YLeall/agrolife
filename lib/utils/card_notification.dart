import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardNotification extends StatelessWidget {
  const CardNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(15),
      child: Container(
        width: 200,
        height: 85,
        decoration: BoxDecoration(
          color: Style.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Style.colorBoxNotifications,
                ),
                child: const Icon(
                  Icons.notification_important,
                ),

              ),

              const SizedBox(width: 10,),

              Flexible(
                child: SizedBox(
                  width: 240,
                  child: Text(
                    'Loren Ipsum notificações diárias, que aparecerem diariamente no aplicativo.', 
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    )
                  ),
                ),
              ),

              const Icon(Icons.close, color: Colors.white,),

            ],
          ),
        ),
      ),
    );
  }
}