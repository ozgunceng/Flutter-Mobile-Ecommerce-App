
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


// my own imports
import 'package:hasmak_ecommerce/components/horizontal_listview.dart';
import 'package:hasmak_ecommerce/components/products.dart';
import 'package:hasmak_ecommerce/pages/categories.dart';
import 'package:hasmak_ecommerce/pages/cart.dart';

void main() {
  runApp(
      MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),

  ));
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
// navbar
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

  Widget image_carousel = new Container(
    height: 0.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [

        AssetImage('images/f.png'),
        AssetImage('images/f2.png'),
        AssetImage('images/f3.png'),
        AssetImage('images/f4.png'),
        AssetImage('images/f5.png'),

      ],
      autoplay: true,
     // animationCurve: Curves.fastOutSlowIn,
    //  animationDuration: Duration(milliseconds: 1000),
      dotSize: 5.0,
      dotColor: Colors.green,
      indicatorBgPadding: 8.0,
    ),

  );




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







        drawer: new Drawer(
          child: Stack(
            children: <Widget>[

              //sidebar menü arkaplan


              Image.asset("images/side900.png",fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,),

              ListView(
                children: <Widget>[

                  Divider(),

                  InkWell(
                    //click özelliği burada back-end sonra yapılacak
                    onTap: () {},
                    child: ListTile(
                      title: Text("Little Sister's Farm", style: TextStyle(color: Colors.white, fontSize: 20)),

                      leading: Image.asset('images/beyazlogo.png',height: 75,width: 75,),
                      //subtitle: new Image.asset('images/products/logoyazi.png',height: 32,width: 143,),
                      //subtitle: Text('Deneme@gmail.com', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Divider( color: Colors.white,),


                  InkWell(
                    //click özelliği burada back-end sonra yapılacak
                    onTap: () {},
                    child: ListTile(
                      title: Text('Kayıt/Giriş', style: TextStyle(color: Colors.white)),
                      leading: Icon(Icons.person_add, color: Colors.white),
                    ),
                  ),

                  InkWell(
                    //click özelliği burada back-end sonra yapılacak
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));},
                    child: ListTile(
                      title: Text('Anasayfa', style: TextStyle(color: Colors.white)),
                      leading: Icon(Icons.home, color: Colors.green),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text('Hesabım', style: TextStyle(color: Colors.white)),
                      leading: Icon(Icons.account_box, color: Colors.deepPurple),
                    ),
                  ),
                  InkWell(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));},
                    child: ListTile(
                      title: Text('Sepet', style: TextStyle(color: Colors.white)),
                      leading: Icon(Icons.shopping_basket, color: Colors.pink),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text('Siparişlerim', style: TextStyle(color: Colors.white)),
                      leading: Icon(Icons.fastfood, color: Colors.tealAccent),
                    ),
                  ),

                  InkWell(
                    onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context)=> Categories()));},
                    child: ListTile(
                      title: Text('Kategoriler',style: TextStyle(color: Colors.white)),
                      leading: Icon(Icons.dashboard, color: Colors.orange),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text('Favoriler',style: TextStyle(color: Colors.white)),
                      leading: Icon(Icons.favorite, color: Colors.red),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text('Ayarlar',style: TextStyle(color: Colors.white)),
                      leading: Icon(Icons.settings, color: Colors.lightBlueAccent),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text('Yardım',style: TextStyle(color: Colors.white)),
                      leading: Icon(Icons.help_outline, color: Colors.yellow),
                    ),
                  ),

                  InkWell(
                    //click özelliği burada back-end sonra yapılacak
                    onTap: () {},
                    child: ListTile(
                      title: Text('Lokasyon',style: TextStyle(color: Colors.white)),
                      leading: Icon(Icons.location_city, color: Colors.white),
                    ),
                  ),
                  InkWell(
                    //click özelliği burada back-end sonra yapılacak
                    onTap: () {},
                    child: ListTile(

                    ),
                  ),
                  InkWell(
                    //click özelliği burada back-end sonra yapılacak
                    onTap: () {},
                    child: ListTile(

                    ),
                  ),
                  InkWell(
                    //click özelliği burada back-end sonra yapılacak
                    onTap: () {},
                    child: ListTile(

                    ),
                  ),
                  InkWell(
                    //click özelliği burada back-end sonra yapılacak
                    onTap: () {},
                    child: ListTile(

                    ),
                  ),


                  // your Drawer Items
                ],
              )
            ],
          ),
        ),


        // carousel burada yarattığımız body ile çalıştı
      body: new ListView(
        children: <Widget>[
          HorizontalList(),



/*
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


                          title: Text("En Çok Satanlar", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),

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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> Categories()));},
                        child:ListTile(

                          leading: Icon(Icons.view_list,color: Colors.black),
                          title: Text("Kategoriler", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),

                        ),
                      )
                  ),
                ],
              ),
            ],
          ), */
          //image carousel begins here
          image_carousel,
          //padding widget
         // new Padding(padding: const EdgeInsets.all(7.0),

         // child: new Text('Kategoriler'),),
          //Horizontal list view begins here // yatay kategoriler baharat etc eklenecek
         // HorizontalList(),


//en çok satanlar ayrı bir text idi grubmarket'e benzemesi için sildim başlığın yanında bir tane daha var
          /*
          new Padding(padding: const EdgeInsets.all(7.0),
          child: new Text('En Çok Satılanlar'),),*/


          /*
          Container(
            height: 500.0,
            child: Products(),

          ),*/
        ],
      )
    );
  }
}
