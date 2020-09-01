import 'package:bbnavigationbar/tenan/checkoutview.dart';
import 'listviemodel.dart';
import 'tenan/productview.dart';
import 'package:flutter/material.dart';


class CartApp extends StatefulWidget {
  @override
  _CartAppState createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  List<ListvieModel> cart = [];
  int sum = 0;
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('PESAN',
          style: TextStyle(fontSize: 35, color: Colors.white),),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Products",),
              Tab(text: "Checkout",),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductView((selectedProduct){
              setState(() {
                _itemCount++;
                if(_itemCount != 0)
                _itemCount--;
                cart.add(selectedProduct);//update
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            CheckoutView(cart, sum),
          ],
        ),
      ),
    );
  }
}