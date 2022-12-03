import 'package:flutter/material.dart';

var myAppBarMobile = AppBar(
  backgroundColor: Colors.grey[300],
  iconTheme: const IconThemeData(color: Colors.black),
);

var myDrawerMobile = Drawer(
  child: Column(
    children: const [

      DrawerHeader(child: Text('BEM VINDO,')),
      
      ListTile(
        leading: Icon(Icons.home),
        title: Text('H O M E'),
      ),

      ListTile(
        leading: Icon(Icons.notifications),
        title: Text('N O T I F I C A Ç Õ E S'),
      ),

      
      ListTile(
        leading: Icon(Icons.security),
        title: Text('S E G U R A N Ç A'),
      ),

    ],
  ),
);
