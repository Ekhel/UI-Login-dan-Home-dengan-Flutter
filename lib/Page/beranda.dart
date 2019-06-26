import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import './product.dart';

class MyBeranda extends StatefulWidget {
  @override
  _MyBerandaState createState() => _MyBerandaState();
}

class _MyBerandaState extends State<MyBeranda> {
  @override
  Widget imageCarousel = new Container(
    height: 200.0,
    child: Carousel(
      overlayShadow: false,
      borderRadius: true,
      boxFit: BoxFit.cover,
      autoplay: true,
      dotSize: 5.0,
      indicatorBgPadding: 9.0,
      images: [
        new AssetImage("assets/slider/s1.png"),
        new AssetImage("assets/slider/s2.png"),
        new AssetImage("assets/slider/s3.png"),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    )
  );

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("PASAR LAUT"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,),
          onPressed: null,
          ),
          IconButton(icon: Icon(Icons.shopping_basket, color: Colors.white),
          onPressed: (){
            Navigator.of(null).push(
              MaterialPageRoute(
                builder: null,
              )
            );
          },)
        ],
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Michael Karafir", style: TextStyle(fontSize: 20.0, color: Colors.lime[300])),
            accountEmail: Text("blackmanskill@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.yellow[100],
                child: Icon(Icons.person,size: 60.0, color: Colors.green),
              ),
            ),
            decoration: BoxDecoration(color: Colors.green[800]),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Beranda", style: TextStyle(color: Colors.green[800])),
              leading: Icon(Icons.store, color: Colors.green[600],),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Akun", style: TextStyle(color: Colors.green[800])),
              leading: Icon(Icons.account_box, color: Colors.green[600],),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Keranjang", style: TextStyle(color: Colors.green[800])),
              leading: Icon(Icons.shopping_basket, color: Colors.green[600],),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Pesanan", style: TextStyle(color: Colors.green[800])),
              leading: Icon(Icons.card_giftcard, color: Colors.green[600],),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Histori Pesanan", style: TextStyle(color: Colors.green[800])),
              leading: Icon(Icons.history, color: Colors.green[600],),
            ),
          ),

          Divider(color: Colors.green, height: 4.0,),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Seting", style: TextStyle(color: Colors.green[800])),
              leading: Icon(Icons.settings_applications, color: Colors.green[600],),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Bantuan", style: TextStyle(color: Colors.green[800])),
              leading: Icon(Icons.help, color: Colors.green[600],),
            ),
          ),

        ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 5.0),
          imageCarousel,

          Padding(padding: const EdgeInsets.only(top: 8.0, left: 8.0,),
          child: Text('Ikan hari ini', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color:  
          Colors.purpleAccent),),
          ),
          Container(
            height: 400.0,
            child: Product(),
          )
        ],
      ),
    ),
    );
  }
}