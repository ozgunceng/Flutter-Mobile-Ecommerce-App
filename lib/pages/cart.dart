
import 'package:flutter/material.dart';
// my imports

import 'package:hasmak_ecommerce/components//cart_products.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        //navbar altındaki gölge
        elevation: 0.1,
        backgroundColor: Color(0xff1d4a33),


        title:Row(
          children: <Widget>[
            Container(
              child:new Image.asset('images/products/logo22.png',height: 32,width: 32,),
            ),
            Container(
              padding: const EdgeInsets.all(0.0),
              child:new Image.asset('images/products/logoyazi.png',height: 32,width: 143,),

              //Eski Text
              //padding: const EdgeInsets.all(8.0), child:Text("Little Sister's Farm", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
            ),

          ],
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: () {}),

        ],
      ),

      body: new Cart_products(),



      bottomNavigationBar: new Container(
        color: Colors.white,
        child:Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Toplam:"),
                subtitle: new Text("320\TL"),
              ),),

           /* DİĞER TARZ
            Row(
              children: <Widget>[
                Container(
                  child:new Text("Toplam:"),
                ),
                Container(
                  padding: const EdgeInsets.all(0.0),
                  child:new Text("320\TL"),

                  //Eski Text
                  //padding: const EdgeInsets.all(8.0), child:Text("Little Sister's Farm", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                ),

              ],
            ),
*/
            Expanded(
                child: new MaterialButton(onPressed: (){},
                  child: new Text("Sipariş Ver",style: TextStyle(color: Colors.white),),
                  color: Color(0xff1d4a33),
                ),
            ),

          ],
        )
      ),
    );
  }
}
