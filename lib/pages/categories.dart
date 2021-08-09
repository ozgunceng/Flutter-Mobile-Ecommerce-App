import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//my import
import 'package:hasmak_ecommerce/components/horizontal_listview.dart';
import 'package:hasmak_ecommerce/components/products.dart';
import 'package:hasmak_ecommerce/main.dart';
import 'package:hasmak_ecommerce/pages/categories.dart';
import 'package:hasmak_ecommerce/pages/cart.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}





class _CategoriesState extends State<Categories> {
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
            // kategoriler için buton ekledim row
            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: <Widget>[

                Column(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: RaisedButton(
                          elevation: 0.0,
                          color: Colors.white,
                          onPressed: (){},
                          //Navigator.push(context,MaterialPageRoute(builder: (context)=> Categories()));},
                          child:ListTile(


                            title: Text("", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),

                          ),
                        )
                    ),
                  ],
                ),
                // new Text("deneme"),
                Column(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: RaisedButton(
                          elevation: 0.0,
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> HomePage()));},
                          child:ListTile(

                            leading: Icon(Icons.view_list,color: Colors.black),
                            title: Text("Kategoriler", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),

                          ),
                        )
                    ),
                  ],
                ),
              ],
            ),
            //image carousel begins here
            //padding widget
            // new Padding(padding: const EdgeInsets.all(7.0),

            // child: new Text('Kategoriler'),),
            //Horizontal list view begins here // yatay kategoriler baharat etc eklenecek
            // HorizontalList(),


//en çok satanlar ayrı bir text idi grubmarket'e benzemesi için sildim başlığın yanında bir tane daha var
            /*
          new Padding(padding: const EdgeInsets.all(7.0),
          child: new Text('En Çok Satılanlar'),),*/

            Center(

              child: new Container(
                height: MediaQuery.of(context).size.height*0.8,
                //width: MediaQuery.of(context).size.width,
                //height: 500.0,
                child:
                Flexible(child: Products(),),
                padding: EdgeInsets.all(5),


            ),
            ),
            new Container(
              child: Row(
              ),
            ),
          ],
        ),
    );
  }
}
