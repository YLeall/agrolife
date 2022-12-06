import 'package:agrolife/pages/mobile/home_page.dart';
import 'package:agrolife/pages/mobile/notifications.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
import 'package:agrolife/utils/style.dart';
import 'package:agrolife/utils/teste2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _searchIndex=0;

  List<Widget> navigationPages = <Widget>[

    const HomePage(),
    const Text('Localização'),
    const Text('Adicionar'),
    const Text('Shop'),
    const Text('Recibo'),

  ];


  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        gestureEnabled = true;
      } else {
        gestureEnabled = false;
      }
      _searchIndex = index;
      
    });
  }

  bool gestureEnabled = true;


  // void searchOnTapIndex(int index){
  //   setState(() {
  //      _searchIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var teste = MediaQuery.of(context).size.width;
    return Scaffold(

      drawerEnableOpenDragGesture: gestureEnabled,

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


      appBar: _searchIndex == 0 ? AppBar(
        
        leadingWidth: (gestureEnabled)
          ? null
          : 0,
        leading: (gestureEnabled)
          ? null
          : Container(), 

        iconTheme: const IconThemeData(color: Colors.black),

        elevation: 0,
        

        backgroundColor: Colors.grey[300],

        title: const AppBarHome()) : AppBar(
           iconTheme: const IconThemeData(color: Colors.black),
            elevation: 0,
            backgroundColor: Colors.grey[300],
            leadingWidth: (gestureEnabled)
              ? null
              : 0,
            leading: (gestureEnabled)
              ? null
              : Container(), 
        ),
     

      body: navigationPages.elementAt(_searchIndex),

      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: _searchIndex,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        //type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,

        
        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Início',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            activeIcon: Icon(Icons.location_on),
            label: 'Localização',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Opções',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_outlined),
            activeIcon: Icon(Icons.receipt),
            label: 'Recibo',
          ),

        ],
      ),

    );
  }
}