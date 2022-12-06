import 'package:agrolife/utils/card_home_page.dart';
import 'package:agrolife/utils/scroll.dart';
import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ScrollController controller = ScrollController();

  final List cards = [
    ['Shop','6 compras','lib/images/icon_compras.png'],
    ['Vendas','10 vendas','lib/images/icon_venda2.png'],
    ['Estoque','6 produtos','lib/images/icon_estoque2.png'],
    ['Plantação','Em monitoramento','lib/images/icon_planta2.png'],
    ['Animais','Em monitoramento','lib/images/icon_gado2.png'],
  ];

  @override
  Widget build(BuildContext context) {

    var teste = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[300],

      drawer: Drawer(
        backgroundColor: Style.primaryColor,
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
            const SizedBox(width: 20,),
            Image.asset('lib/images/logoVerdeD.png', width: 35,),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 45),
                child: Text('AGROLIFE', style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: primary
                ),),
              ),
            ),
          ],
        ),
      ),


      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              //height: 128,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Style.colorGradientClimateBlue1,
                    Style.colorGradientClimateBlue2,
                  ],
                  begin: Alignment.topCenter,
                  end:  Alignment.bottomCenter,
                 
                )

              ),

              child: Column(
                children: [

                  Container(
                    
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          const SizedBox(width: 15,),

                          Text(
                            'Salvador ',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                      
                          SizedBox(
                            height: 20, 
                            width: 1,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),

                          Text(
                            ' Bahia',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('lib/images/suntemp.png'),
                                  //fit: BoxFit.cover,
                                 
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    )
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Container(
                        //color: Colors.red,
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Hoje',
                              style: GoogleFonts.righteous(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                            const SizedBox(height: 4,),

                            Text(
                              '23°',
                              style: GoogleFonts.righteous(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                            const SizedBox(height: 2,),

                            
                            Text(
                              '^26°  ^18°',
                              style: GoogleFonts.righteous(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                           
                          ],
                        ),
                      ),

                      Container(
                        //color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              
                              children: [

                                const Icon(
                                  Icons.water,
                                  color: Colors.white,
                                ),

                                Text(
                                  '6%',
                                  style: GoogleFonts.alegreyaSans(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ],
                            ),

                            const SizedBox(height: 8,),

                            Row(
                              children: [

                                const Icon(
                                  Icons.thermostat,
                                  color: Colors.white,
                                ),

                                Text(
                                  '90%',
                                  style: GoogleFonts.alegreyaSans(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ],
                            ),

                             const SizedBox(height: 8,),

                            Row(
                              children: [

                                const Icon(
                                  Icons.wind_power,
                                  color: Colors.white,
                                ),

                                Text(
                                  '19 km/h',
                                  style: GoogleFonts.alegreyaSans(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),


                   const SizedBox(height: 15,),

                ],
              ),
              
            ),
          ),

          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Menu',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
            ),
          ),

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