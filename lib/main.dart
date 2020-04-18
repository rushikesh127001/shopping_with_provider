import 'package:flutter/material.dart';
import 'package:shopwithprovider/routing/routesgeneration.dart';
import 'package:shopwithprovider/models/cart.dart';
import 'package:shopwithprovider/models/catalog.dart';
import 'package:shopwithprovider/screens/login.dart';
import 'package:shopwithprovider/screens/cart.dart';
import 'package:shopwithprovider/screens/catalog.dart';
void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
        centerTitle: true,
        backgroundColor: Colors.black87,
        leading: Icon(Icons.shopping_cart),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Please Login First"),
          onPressed: ()=>Navigator.of(context).pushNamed('\login'),
        ),
      ),
    );
  }


 
}
