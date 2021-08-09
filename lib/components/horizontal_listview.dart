import 'package:flutter/material.dart';
//my import
import 'package:hasmak_ecommerce/components/horizontal_listview.dart';
import 'package:hasmak_ecommerce/components/products.dart';
import 'package:hasmak_ecommerce/pages/categories.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.9,
     // height: 1200,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 3,
        children: <Widget>[

          Category(
            image_location: 'images/topselling.png',
            image_caption: 'Çok Satanlar',


          ),
          Category(
            image_location: 'images/cats/c1.jpg',
            image_caption: ' Kuru Meyve',
          ),
          Category(
            image_location: 'images/cats/c2.jpg',
            image_caption: 'Sebze & Meyve',
          ),
          Category(
            image_location: 'images/cats/c3.jpg',
            image_caption: 'Kahvaltılık',
          ),
          Category(
            image_location: 'images/cats/c4.jpg',
            image_caption: 'Zeytinyağı',
          ),
          Category(
            image_location: 'images/cats/c5.jpg',
            image_caption: 'Baharat',
          ),
          Category(
            image_location: 'images/cats/c6.jpg',
            image_caption: 'Kuruyemiş',
          ),
          Category(
            image_location: 'images/cats/c7.jpg',
            image_caption: 'Sos & Sirke',
          ),
          Category(
            image_location: 'images/cats/c8.jpg',
            image_caption: 'Doğal Temizlik',
          ),
          Category(
            image_location: 'images/cats/c9.jpg',
            image_caption: 'Özel Paketler',
          ),
          Category(
            image_location: 'images/cats/c10.jpg',
            image_caption: 'Bakliyat',
          ),
          Category(
            image_location: 'images/cats/c11.jpg',
            image_caption: 'Saksı Bitki/Fidan',
          ),
          Category(
            image_location: 'images/cats/c12.jpg',
            image_caption: 'Şefin Mutfağı',
          ),
          Category(
            image_location: 'images/cats/c13.jpg',
            image_caption: 'Paketini Oluştur',
          ),




        ],
      ),
    );
  }
}



class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(10.0),

      child: InkWell(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=> Categories()));},
        child: Container(
          width: 100.0,
          child: ListTile(

              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,

              ),
              subtitle: Center(
                child: Container(

                  alignment: Alignment.topCenter,

                  child: Text(image_caption, style: new TextStyle(fontSize: 10.5),),

                ),
              )
          ),
        ),
      ),
    );
  }
}




