import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart=[
    {

      "name": "Mini Narenciye Paketi",
      "picture": "images/deneme.png",
      "price":85.75,
      "quantity": 1,
      "size": "1kg"
       },
    {
      "name": "Mini Beslenme Paketi",
      "picture": "images/deneme2.png",
      "price":85,
      "quantity": 1,
      "size":"5kg",

    },
    {
      "name": "Mini Beslenme Paketi",
      "picture": "images/deneme2.png",
      "price":85,
      "quantity": 1,
      "size":"5kg",

    },
    {
      "name": "Mini deneme Paketi",
      "picture": "images/deneme2.png",
      "price":85,
      "quantity": 1,
      "size":"5kg",

    },
    {
      "name": "Mini Beslenme2 Paketi",
      "picture": "images/deneme2.png",
      "price":85,
      "quantity": 1,
      "size":"5kg",

    },



  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount:Products_on_the_cart.length,
        itemBuilder:(context, index){
      return Single_cart_product(

        cart_prod_name: Products_on_the_cart[index]["name"],
        cart_prod_pricture: Products_on_the_cart[index]["picture"],
        cart_prod_price: Products_on_the_cart[index]["price"],
        cart_prod_qty: Products_on_the_cart[index]["quantity"],
        cart_prod_size: Products_on_the_cart[index]["size"],

      );
    });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_qty;
  final cart_prod_size;


  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_price,
    this.cart_prod_pricture,
    this.cart_prod_qty,
    this.cart_prod_size,

});


  @override
  Widget build(BuildContext context) {
    return Card(
      child:Container(
        child: ListTile(
          // leading image dosyası ekrandaki
          leading: new Image.asset(cart_prod_pricture,width: 100.0,height: 100.0,),
          // ürün ismi
          title: new Text(cart_prod_name),
          subtitle: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.fromLTRB(5,5,5,5),
                    child: new Text("$cart_prod_qty\X"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5,5,5,5),
                    child: new Text("$cart_prod_size"),
                  ),
                ],
              ),
              new Container(
                alignment: Alignment.topLeft,
                child: new Text("$cart_prod_price\TL",
                  style:  TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),

              new Container(
                child: Row(



                    children: <Widget>[

                      new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
                      new Text("$cart_prod_qty"),
                      new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),

                    ],

                ),
              )


            ],
        ),






        ),
      ),
    );
  }
}
