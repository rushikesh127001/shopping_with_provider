import 'package:flutter/material.dart';
import 'package:shopwithprovider/models/cart.dart';
import 'package:shopwithprovider/models/catalog.dart';
import 'package:shopwithprovider/screens/login.dart';
import 'package:shopwithprovider/screens/cart.dart';
import 'package:shopwithprovider/screens/catalog.dart';

class Cart extends ChangeNotifier{
  List<Item> cartitems=[itemz,itemzz];
  static Item itemz=Item(name: "kkk",count: 7,id: 9);
  static Item itemzz=Item(name: "jjj",count: 7,id: 90);

  List adds(Item item){
    cartitems.add(item);
    print("added"+"  "+item.name+"  "+"${cartitems.last.name}"+"  "+"${cartitems.first.name}"+"  "+"${cartitems.length}");
    notifyListeners();
    return cartitems;
  }


  void remove(Item item){
    cartitems.removeAt(item.id+1);
    notifyListeners();
  }
  void addmultiple(Item item){
    item.count++;
    notifyListeners();
  }

}