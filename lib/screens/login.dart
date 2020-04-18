import 'package:flutter/material.dart';
import 'package:shopwithprovider/models/cart.dart';
import 'package:shopwithprovider/models/catalog.dart';
import 'package:shopwithprovider/screens/login.dart';
import 'package:shopwithprovider/screens/cart.dart';
import 'package:shopwithprovider/screens/catalog.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catalog"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              FractionallySizedBox(
                widthFactor: 0.5,
                child: TextFormField(
                  decoration:InputDecoration(
                    hintText: "Enter Username",
                  ),
                  ),
              ),
              FractionallySizedBox(
                widthFactor: 0.5,

                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  obscureText: true,
                ),
              ),
              FlatButton(onPressed: ()=>Navigator.of(context).pushNamed('\catalog'),
                  child: Container(
                    child: Text("Go To Catalog"),
                    decoration: BoxDecoration(border: Border.all(width: .3)),
                    padding: EdgeInsets.all(17),
                  ),

              )
            ],
          ),
        ),
      ),
    );
  }
}