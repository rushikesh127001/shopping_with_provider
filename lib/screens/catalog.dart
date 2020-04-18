import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:shopwithprovider/models/cart.dart';
import 'package:shopwithprovider/models/catalog.dart';
import 'package:shopwithprovider/screens/login.dart';
import 'package:shopwithprovider/screens/cart.dart';
import 'package:shopwithprovider/screens/catalog.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      //scrollDirection: Axis.horizontal,
      slivers: [
        SliverAppBar(
          title: Text("Catalog"),
          floating: true,
          actions: [
            IconButton(icon: Icon(Icons.shopping_basket), onPressed: ()=>Navigator.of(context).pushNamed('\cart'))
          ],


          centerTitle: true,
        ),
        MultiProvider(providers: [
          ChangeNotifierProvider<Catalog>(create: (context) => Catalog()),
          ChangeNotifierProvider<Cart>(create: (context) => Cart()),
        ],

          child: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            delegate: SliverChildBuilderDelegate(
                  (context, num) {
                return Consumer<Catalog>(
                  builder: (context, catalog, child) {
                    final Item item = catalog.getbyid(num);
                    print(
                        "$num"); //for debugging getting till 9 as i have 9 list members
                    print(item
                        .runtimeType); // getting expected runtimetype that is Item for 8 objects ,but getting null for last.
                    return CatalogItems(item: item);
                  },
                );
              },
              childCount: 9,
            ),

               ),
        ),
      ],
    );
  }
}

class CatalogItems extends StatelessWidget {
  CatalogItems({this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text("${item.name}")),
          Center(
            child: Consumer<Cart>(
              builder: (context,cart,child){
                return RaisedButton(
                  onPressed: (){

                   cart.cartitems= cart.adds(item);
                  },
                );

              },

            ),
          ),
        ],
      ),
    );
  }
}

// onPressed: (() => (Provider.of<Cart>(context).add(item)))),