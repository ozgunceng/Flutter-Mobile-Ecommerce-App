import 'package:flutter/material.dart';
import 'package:hasmak_ecommerce/pages/product_details.dart';


class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {

      "name": "Mini Narenciye Paketi",
      "picture": "images/deneme.png",
      "old_price": 290.99,
      "price":85.75,
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
    {
      "name": "Mini Beslenme Paketi",
      "picture": "images/deneme2.png",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme",
    },
    {
      "name": "Dolmalık Kuru Patlıcan ",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme",
    },


  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),

        itemBuilder: ( BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
            prod_details: product_list[index]['text'],

          );
        });
  }
}


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {

      "name": "Mini Narenciye Paketi",
      "picture": "images/deneme.png",
      "old_price": 290.99,
      "price":85.75,
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
    {
      "name": "Mini Beslenme Paketi",
      "picture": "images/deneme2.png",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme",
    },
    {
      "name": "Dolmalık Kuru Patlıcan ",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme",
    },
    {
      "name": "Dolmalık Kuru Kabak",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme",
    },
    {
      "name": "Ürün 5",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme",
    },
    {
      "name": "Ürün 6",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme",
    },
    {
      "name": "Ürün 7",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme 222",
    },
    {
      "name": "Ürün 8",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme 222",
    },
    {
      "name": "Ürün 9",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme 222",
    },
    {
      "name": "Ürün 10",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme 222",
    },
    {
      "name": "Ürün 11",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme 222",
    },
    {
      "name": "Ürün 12",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme 222",
    },
    {
      "name": "Ürün 13",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme 222",
    },

    {
      "name": "Ürün 14",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme 222",
    },
    {
      "name": "Ürün 15",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme 222",
    },

    {
      "name": "Ürün 16",
      "picture": "images/products/logo.jpg",
      "old_price": 120,
      "price":85,
      "text": "deneme deneme deneme 222",
    },





  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: product_list.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),

          itemBuilder: ( BuildContext context, int index){
            return Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
              prod_details: product_list[index]['text'],

            );
          }),
    );
  }
}
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;
  final prod_details;

  Single_prod({
  this.prod_name,
  this.prod_pricture,
  this.prod_old_price,
  this.prod_price,
  this.prod_details,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context)=> new ProductDetails(
                    // passing values to the product details page yeni yarattığımız sayfa
                    product_detail_name: prod_name,
                    product_detail_newprice: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_pricture,
                    product_detail_text: prod_details,
                  ))),
      child:GridTile(
          footer: Container(
            color: Colors.black38,
            height: 50,
            child: ListTile(
              leading: Text(prod_name, style: TextStyle( fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 10 ),
              textAlign: TextAlign.center),
              title:Text("$prod_price\TL", style: TextStyle(
                  fontWeight: FontWeight.w800, color: Colors.white, fontSize: 10 ),
              ),
              subtitle: Text("$prod_old_price\TL",
              style:  TextStyle(
                color: Colors.white,
                  fontSize: 10,
                decoration:
                  TextDecoration.lineThrough
               ),
              ),

            ),


          ),
          child: Image.asset(prod_pricture,
          fit: BoxFit.cover,)) ,
      ),
      )),
    );
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;
  final prod_details;

  Similar_single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
    this.prod_details,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context)=> new ProductDetails(
                    // passing values to the product details page yeni yarattığımız sayfa
                    product_detail_name: prod_name,
                    product_detail_newprice: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_pricture,
                    product_detail_text: prod_details,
                  ))),
              child:GridTile(
                  footer: Container(
                    color: Colors.black38,
                    height: 50,
                    child: ListTile(
                      leading: Text(prod_name, style: TextStyle( fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 10 ),
                          textAlign: TextAlign.center),



                      title:Text("$prod_price\TL", style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.white, fontSize: 10 ),
                      ),

                      subtitle: Text("$prod_old_price\TL",
                        style:  TextStyle(
                            color: Colors.red,
                            fontSize: 10,
                            decoration:
                            TextDecoration.lineThrough
                        ),
                      ),
                    ),
                  ),

                  child: Image.asset(prod_pricture,
                    fit: BoxFit.cover,)) ,
            ),
          )),
    );
  }
}


