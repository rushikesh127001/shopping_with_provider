import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopwithprovider/models/cart.dart';
import 'package:shopwithprovider/models/catalog.dart';
import 'package:shopwithprovider/screens/login.dart';
import 'package:shopwithprovider/screens/cart.dart';
import 'package:shopwithprovider/screens/catalog.dart';
/*
class CartScreen extends StatefulWidget{

  @override
  _CartScreenState createState()=>_CartScreenState();
}
*/
class CartScreen extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cart>(
      create: (context)=>Cart(),
      child: Consumer<Cart>(
          builder: (context,cart,child){
            return ListView.builder(itemBuilder: (context,num){

              print(cart.cartitems.length);

              return Row(
                children: [
                 // Text("${num}"),
                  Text("${cart.cartitems[num].name}")
                ],
              );
            },
              itemCount: cart.cartitems.length,


            );
          } )


    );
/*
    return ChangeNotifierProvider<Cart>(
      create: (context)=>Cart(),
      child: Consumer<Cart>(
        builder: (context,cart,child){
          cart.cartitems.map((e){
           return
         } );
         // return CartItems(item: item);
        },
      ),
    );
*/
  }
}

class CartItems extends StatelessWidget{
  CartItems({this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {

  }
}
