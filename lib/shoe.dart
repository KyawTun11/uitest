import 'package:flutter/material.dart';

class Shoe extends StatefulWidget {
  Shoe({Key? key}) : super(key: key);

  @override
  _ShoeState createState() => _ShoeState();
}

class _ShoeState extends State<Shoe> {
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
          'New Arrival',
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
          buildSearchBox(),
          buildImage(),
          buildShoes(),
        ],
      ),
    );
  }

  Widget buildSearchBox() => Column(
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
  Widget buildImage() => Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            color: const Color(0xFFECF2F4),
            image: const DecorationImage(
              image: AssetImage('assets/images/2.jpg'),
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
                        Text("Running Shoes",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey,
                            )),
                        Text("AllStar White",
                            style: TextStyle(
                              fontSize: 16.0,
                            )),
                        Text(
                          r"$120.90",
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
  Widget buildShoes() => Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            color: const Color(0xFFEC7430),
            image: const DecorationImage(
              image: AssetImage('assets/images/02.jpg'),
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
                        Text("Running Shoes",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey,
                            )),
                        Text("AllStar Black",
                            style: TextStyle(
                              fontSize: 16.0,
                            )),
                        Text(
                          r"$100",
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
