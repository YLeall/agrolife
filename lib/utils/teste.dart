import 'package:agrolife/utils/scroll.dart';
import 'package:agrolife/utils/card_home_page.dart';
import 'package:flutter/material.dart';

class Teste extends StatelessWidget {

  const Teste({super.key});

  @override
  Widget build(BuildContext context) {

    final ScrollController controller = ScrollController();

    final List cards = [
      ['Shop','6 compras','lib/images/icon_compras.png'],
      ['Vendas','10 vendas','lib/images/icon_venda2.png'],
      ['Estoque','6 produtos','lib/images/icon_estoque2.png'],
      ['Plantação','Em monitoramento','lib/images/icon_planta2.png'],
      ['Animais','Em monitoramento','lib/images/icon_gado2.png'],
    ];

    return Scaffold(

      body: Column(
        children: [
      
          SizedBox(
            height: 150,
            
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
            
              child: ListView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return CardHomePage(
                    titleCard: cards[index][0],
                    subTitleCard: cards[index][1],
                    imagePath: cards[index][2],
                  );
                },
              ),
            ),
          ),


        ],
      ),
    );
  }
}