import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Product extends StatefulWidget {
  Product({Key key}) : super(key: key);
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var productlist=[
    {
      "nama"  : "Ikan Baronang",
      "gambar" : "assets/product/ikan-baronang.png",
      "harga" : "300"
    },
    {
      "nama"  : "Ikan Kakap Merah",
      "gambar" : "assets/product/ikan-kakap-merah.png",
      "harga" : "300"
    },
    {
      "nama"  : "Ikan Kembung",
      "gambar" : "assets/product/ikan-kembung.png",
      "harga" : "500"
    },
    {
      "nama"  : "Ikan Tuna",
      "gambar" : "assets/product/ikan-tuna.png",
      "harga" : "4500"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productlist.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          productnama: productlist[index]["nama"],
          productharga: productlist[index]["harga"],
          productgambar: productlist[index]["gambar"],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final productnama;
  final productgambar;
  final productharga;

  SingleProduct({
    this.productnama,
    this.productgambar,
    this.productharga
  });

  @override
  Widget build(BuildContext context){
    return Padding(padding: const EdgeInsets.only(left: 8.0, top: 8.0),
    child: Card(
      elevation: 6.0,
      color: Colors.cyanAccent,
      child: Hero(
        tag: productnama,
        child: Material(
          child: InkWell(
            onTap: (){

            },
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(productnama, style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text("\$$productharga", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16.0)
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(productgambar, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
    ),
    );
  }
}