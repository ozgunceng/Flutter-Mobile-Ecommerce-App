import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hasmak_ecommerce/components/products.dart';
import 'package:hasmak_ecommerce/main.dart';
import 'package:hasmak_ecommerce/components/cart_products.dart';
import 'package:hasmak_ecommerce/pages/cart.dart';



class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_newprice;
  final product_detail_old_price;
  final product_detail_picture;
  final product_detail_text;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_newprice,
    this.product_detail_old_price,
    this.product_detail_picture,
    this.product_detail_text,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}




class _ProductDetailsState extends State<ProductDetails> {



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
              icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
          }),

        ],



      ),



      body: new ListView(
        children: <Widget>[
          new Container(
            height: 250.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture,height: 40,width: 40,) ,
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("${widget.product_detail_old_price}TL",
                        style: TextStyle(color: Colors.red,
                        decoration: TextDecoration.lineThrough),)
                      ),
                      Expanded(
                          child: new Text("${widget.product_detail_newprice}TL" )
                      ),
                    ],
                  ),
                ),
              ),),
          ),





// first buttons


          Row(
            children: <Widget>[

              //size button
              Expanded
                (child: MaterialButton( onPressed: (){
                  showDialog(context: context,
                  builder:(contex){
                    return new AlertDialog(
                      title: new Text("Gönderim Sıklığı"),
                      content: new Text("Tekrarsız / Haftalık / Aylık"),
                      actions: <Widget>[
                        new MaterialButton(onPressed:(){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("Kapat"),),
                      ],
                    );
                  });
              },
              color:Colors.white,
              textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Frequency"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),

                  ],
                ),
              ),
              ),



              Expanded
                (child: MaterialButton( onPressed: (){},
                color:Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                   /* Expanded(
                      child: new Text("seçim"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),

                    new Column(

                        children: <Widget>[

                          new IconButton(icon: Icon(Icons.plus_one), onPressed: (){}),

                          new IconButton(icon: Icon(Icons.minimize), onPressed: (){}),

                        ],
                      ),*/


                  ],
                ),
              ),
              ),


            ],
          ),



//// satın al buton

          Row(
            children: <Widget>[

              //size button
              new IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){}),


              Expanded
                (child: MaterialButton( onPressed: (){},
                color:Color(0xff1d4a33),
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Sepete Ekle",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              ),

              Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 5)),
              new IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}),


            ],
          ),
          new ListTile(
            title: new Text("Ürün Açıklaması"),
            subtitle: new Text(widget.product_detail_text),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(20.0,5,5,5),
                  child: new Text("Ürün Adı", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),),
              
            ],
          ),

          /// marka database e kaydedilecek
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(20.0,5,5,5),
                child: new Text("Ürün Çeşidi", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Çeşit"),),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(20.0,5,5,5),
                child: new Text("Adet Stili", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Kilo/500 gram"),),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(20.0,5,5,5),
                child: new Text("Yetiştirici Notu", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Boncuk'un Sütünden Üretildi Deneme"),),
            ],
          ),
          new Row(
            children: <Widget>[

            ],
          ),
          new Row(
            children: <Widget>[

            ],
          ),

          new Row(
            children: <Widget>[
              Container()

            ],
          ),








        ],
      ),


    );
  }
}



