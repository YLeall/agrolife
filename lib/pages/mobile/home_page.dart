import 'package:agrolife/pages/mobile/notifications.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
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
          padding: const EdgeInsets.all(8),
          children: [

            ListTile(
              leading: const Icon(Icons.arrow_back, color: Colors.white,),

              /*title: Text(
                'Bem vindo, Alex',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),*/

              onTap: () {
                Navigator.pop(context);
              },
            ),

            const SizedBox(height: 10,),

            ListTile(

              title: Text(
                'Bem vindo, Alex',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),

            ),

            ListTile(
              leading: Image.asset('lib/images/logoCorte.png', height: 200,),

              title: Text(
                'Agrolife',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),

              subtitle: Text(
                '@agrolife',
                 style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              
            ),

            const SizedBox(height: 20,),

            ListTile(
              minLeadingWidth: 20,
              leading: const Icon(Icons.notifications, color: Colors.white,),
              title: Text(
                'Notificações',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),

              onTap: () {
                Navigator.pop(context);

                Future.delayed(const Duration(milliseconds: 500), () {
                  Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return ResponsiveLayout(
                        mobileScaffold: const PageNotifications(),
                        tabletScaffold: const TabletScaffold(),
                      );
                    }
                  )
                );
                });

                

              },
              
            ),

            const Divider(color: Colors.white,),

            ListTile(
              minLeadingWidth: 20,
              leading: const Icon(Icons.security, color: Colors.white,),
              title: Text(
                'Segurança',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),

              onTap: () {
                Navigator.pop(context);
              },
              
            ),

            const Divider(color: Colors.white,),

            ListTile(
              minLeadingWidth: 20,
              leading: const Icon(Icons.settings, color: Colors.white,),
              title: Text(
                'Configurações',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),

              onTap: () {
                Navigator.pop(context);
              },
              
            ),

            const Divider(color: Colors.white,),

            ListTile(
              minLeadingWidth: 20,
              leading: const Icon(Icons.edit, color: Colors.white,),
              title: Text(
                'Editar dados do Perfil',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),

              onTap: () {
                Navigator.pop(context);
              },
              
            ),

            const Divider(color: Colors.white,),

            ListTile(
              minLeadingWidth: 20,
              leading: const Icon(Icons.local_florist, color: Colors.white,),
              title: Text(
                'Lista de Desejo',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),

              onTap: () {
                Navigator.pop(context);
              },
              
            ),

            const Divider(color: Colors.white,),

            ListTile(
              minLeadingWidth: 20,
              leading: const Icon(Icons.attach_money, color: Colors.white,),
              title: Text(
                'Finanças',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),

              onTap: () {
                Navigator.pop(context);
              },
              
            ),

            const Divider(color: Colors.white,),
            //const SizedBox(height: 50,),


            ListTile(
              minLeadingWidth: 20,
              leading: const Icon(Icons.help, color: Colors.white,),
              title: Text(
                'Me Ajude',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),

              onTap: () {
                Navigator.pop(context);
              },
              
            ),

            const Divider(color: Colors.white,),

            ListTile(
              minLeadingWidth: 20,
              leading: const Icon(Icons.exit_to_app, color: Colors.white,),
              title: Text(
                'Sair',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),

              onTap: () {
                Navigator.pop(context);
              },
              
            ),

            const Divider(color: Colors.white,),


            const SizedBox(height: 30,),

            ListTile(

              title: Text(
                'Versão 1.0',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),

            ),


            const SizedBox(height: 30,),



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
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Text('AGROLIFE', style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: primary
              ),),
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