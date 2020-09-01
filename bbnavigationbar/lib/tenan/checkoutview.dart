import 'package:bbnavigationbar/tenan/qrview.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  final cart;
  final sum;
  CheckoutView(this.cart, this.sum);
//  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListView.separated(
          itemBuilder: (context, index){
            return ListTile(
              title: Text(cart[index].name),
              trailing:
//                  _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
                  Text("${cart[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
              onTap: (){
            },
            );
          },
          separatorBuilder: (context, index){
            return Divider();
          },
          itemCount: cart.length,
          shrinkWrap: true,
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
               Text("TOTAL : $sum",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
//        Align(
//          alignment: Alignment.center,
//          child: Container(
//            height: 45,
//            width: 350,
//            color: Colors.blueGrey[50],
//            child:  Text("TOTAL : $sum",
//              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0), ),
//          ),
//        ),
        GestureDetector(
          onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => QrView()));
          },
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(35.0),
            ),
            child: Center(
              child: Text(
                "Buat Struk",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),

      ],
    );
  }
}