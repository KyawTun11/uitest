import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_test/shoe.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get icon => null;

  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          'Best Furniture',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          ImageIcon(
            AssetImage("assets/images/js.png"),
            color: Colors.black,
          ),
        ],
        backgroundColor: Color(0xFFECF2F4),
      ),
      body: ListView(
        children: [
          buildSearch(),
          buildItem(),
          buildChair(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Shoe()));
        },
        child: Icon(
          Icons.arrow_right,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget buildSearch() => Column(
        children: <Widget>[
          Container(
            color: Color(0xFFECF2F4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'Search Item',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
  Widget buildItem() => Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            color: const Color(0xFFECF2F4),
            image: const DecorationImage(
              image: AssetImage('assets/images/3.png'),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Visitor Chair",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey,
                            )),
                        Text("Visitor Chair",
                            style: TextStyle(
                              fontSize: 16.0,
                            )),
                        Text(
                          r"$56.90",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    ImageIcon(
                      AssetImage("assets/images/sh.png"),
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  Widget buildChair() => Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            color: const Color(0xFFECF2F4),
            image: const DecorationImage(
              image: AssetImage('assets/images/4.png'),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Persidentical Chair",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey,
                            )),
                        Text("Persidentical Chair",
                            style: TextStyle(
                              fontSize: 16.0,
                            )),
                        Text(
                          r"$56.90",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    ImageIcon(
                      AssetImage("assets/images/sh.png"),
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
