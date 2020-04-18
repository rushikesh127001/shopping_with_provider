import 'package:flutter/material.dart';
import 'package:shopwithprovider/models/cart.dart';
import 'package:shopwithprovider/models/catalog.dart';
import 'package:shopwithprovider/screens/login.dart';
import 'package:shopwithprovider/screens/cart.dart';
import 'package:shopwithprovider/screens/catalog.dart';

class Catalog extends ChangeNotifier {
  final List items = ["a", 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'];
  Item getbyid(int id) => Item(id: id, name: items[id]);
}

class Item {
  final Color color;
  final num id;
  final String name;
  num count;
  static const price = 69;
  Item({this.name, this.id, this.count = 1}) : color = Colors.primaries[id % 9];
}
