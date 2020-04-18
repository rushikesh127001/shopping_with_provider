import 'package:flutter/material.dart';
import 'package:shopwithprovider/models/cart.dart';
import 'package:shopwithprovider/models/catalog.dart';
import 'package:shopwithprovider/screens/login.dart';
import 'package:shopwithprovider/screens/cart.dart';
import 'package:shopwithprovider/screens/catalog.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args=settings.arguments;
    switch(settings.name)
    {
      case '\login':

          return MaterialPageRoute(builder: (_)=>LoginScreen());


      case '\catalog':
        //if(args=='Rushikesh')
        return MaterialPageRoute(builder: (_)=>CatalogScreen());
        break;

      case '\cart':
        return MaterialPageRoute(builder: (_)=>CartScreen());

    }
  }

}