import 'package:agrolife/pages/mobile/home_page.dart';
import 'package:flutter/material.dart';

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

  void searchOnTapIndex(int index){
    setState(() {
       _searchIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: navigationPages[_searchIndex],

      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: _searchIndex,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        //type: BottomNavigationBarType.fixed,
        onTap: searchOnTapIndex,

        
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