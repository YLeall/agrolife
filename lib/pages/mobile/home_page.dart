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


          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Notícias',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [

                Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Style.colorBorderCardHomePage,
                        width: 1,
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
                    child: const Icon(Icons.agriculture, size: 50,),
                ),

                const SizedBox(width: 12,),

                Expanded(
                  child: Container(
                    width: 230,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Style.colorBorderCardHomePage,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(1.0, 2.0),
                          blurRadius: 6.0,
                          spreadRadius: 1.0
                        ),
                      ],
                    ),
                   
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(

                        children: [
                
                          Text(
                            'Indústria prevê corte de safra',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                
                          Expanded(
                            child: Text(
                              'Antes do furacão, a indústria esperava que o Departamento de Agricultura dos Estados Unidos ...', 
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [

                Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Style.colorBorderCardHomePage,
                        width: 1,
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
                    child: const Icon(Icons.moving_outlined, size: 50,),
                ),

                const SizedBox(width: 12,),

                Expanded(
                  child: Container(
                    width: 230,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Style.colorBorderCardHomePage,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(1.0, 2.0),
                          blurRadius: 6.0,
                          spreadRadius: 1.0
                        ),
                      ],
                    ),
                   
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(

                        children: [
                
                          Text(
                            '18/11/2022 - Suíno',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                
                          Expanded(
                            child: Text(
                              'Dados do IBGE indicam redução do ritmo de crescimento da produção', 
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),

          const SizedBox(height: 30,),


        ],
      ),

    );
  }
}