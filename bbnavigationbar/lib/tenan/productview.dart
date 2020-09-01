
import 'package:flutter/material.dart';
import 'package:bbnavigationbar/listviemodel.dart';


class ProductView extends StatelessWidget {
  final ValueSetter<ListvieModel> _valueSetter;
  int _itemCount = 0;
  ProductView(this._valueSetter);

  List<ListvieModel> products = [
    ListvieModel("Ayam Geprek Sambal Matah", 10000),
    ListvieModel("Ayam Geprek Sambal Ijo", 10000),
    ListvieModel("Ayam Geprek Sambal Merah", 10000),
    ListvieModel("Ayam Bakar Sambal Merah", 12000),
    ListvieModel("Ayam Bakar Sambal Ijo", 12000),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].name),
            trailing: Text("${products[index].price}", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),),
            onTap: (){
              _valueSetter(products[index]);
            },
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
        itemCount: products.length
    );
  }
}