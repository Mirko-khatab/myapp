import 'dart:ffi';

import 'package:myapp/About.dart';
import 'package:myapp/login.dart';
import 'package:myapp/solash.dart';
import 'package:flutter/material.dart';
// import 'package:gashbush/solash.dart';
import 'Clothes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int _selectedItem = 0;
List _itemName = Clothes().getAllclothes();
List _itemPrice = Clothes().getAllClothesPrice();
List _itemImage = Clothes().getAllClothesImage();

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  Widget build(BuildContext context) {
    //array _itemName to store the name of the list
    //put the iphone class

    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.purple[200],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width * 0.1,
                        backgroundImage: AssetImage('images/log.png'),
                      ),
                      Text(
                        "Rena kamal",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rena@gmail.com ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => solash()));
                },
              ),
              ListTile(
                title: Text("About as"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
              ListTile(
                title: Text("Logout"),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.purple[200],
          title: Text('Onlineshop'),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart, size: 30),
                SizedBox(
                  width: 10,
                ),
                Text(
                  _selectedItem.toString(),
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.035),
                ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            //text input field for search
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                    ),
                  ),
                ),
              ),
            ),
            //list of categories
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _itemName = Clothes().getAllclothes();
                        _itemPrice = Clothes().getAllClothesPrice();
                        _itemImage = Clothes().getAllClothesImage();
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        'ALL',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                      width: 120,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _itemName = Clothes().Kids;
                        _itemPrice = Clothes().kidsPrice;
                        _itemImage = Clothes().kidsImages;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        'Kids',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                      width: 120,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _itemName = Clothes().Women;
                        _itemPrice = Clothes().womenPrice;
                        _itemImage = Clothes().womenImage;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        'Women',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                      width: 120,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _itemName = Clothes().menStyle;
                        _itemPrice = Clothes().menPrice;
                        _itemImage = Clothes().menImage;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        'Men',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                      width: 120,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(70),
                      //   topRight: Radius.circular(70),
                      // ),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.17,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 7),
                            child: (Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.17,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/${Clothes().getAllClothesImage()[index]}",
                                    fit: BoxFit.contain,
                                    width: MediaQuery.of(context).size.width *
                                        0.22,
                                  ),
                                  Text("${Clothes().getAllclothes()[index]}"),
                                ],
                              ),
                            )),
                          );
                        }),
                        itemCount: Clothes().getAllclothes().length),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(70),
                      //   topRight: Radius.circular(70),
                      // ),
                      color: Colors.purple[200],
                    ),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.497,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 7),
                            child: (Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.17,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/${Clothes().getAllClothesImage()[index]}",
                                    fit: BoxFit.contain,
                                    width: MediaQuery.of(context).size.width *
                                        0.22,
                                  ),
                                  Text("${Clothes().getAllclothes()[index]}"),
                                ],
                              ),
                            )),
                          );
                        }),
                        itemCount: Clothes().getAllclothes().length),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
