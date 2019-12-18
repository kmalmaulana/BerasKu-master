import 'dart:async';

import 'package:berasku/firestore_services.dart';
import 'package:berasku/products.dart';
import 'package:berasku/widgets/category_tab.dart';
import 'package:berasku/widgets/product_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Products> items;
  FireStoreService fireServ = FireStoreService();
  StreamSubscription<QuerySnapshot> todoTask;

  @override
  void initState() {
    super.initState();

    items = List();

    todoTask?.cancel();
    todoTask = fireServ.getTaskList().listen((QuerySnapshot snapshot) {
      final List<Products> products = snapshot.documents
          .map((documentSnapshot) => Products.fromMap(documentSnapshot.data))
          .toList();

      setState(() {
        this.items = products;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              CategoryTab(
                categoryName: 'All',
                tabColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              CategoryTab(
                categoryName: 'Rice',
                tabColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              CategoryTab(
                categoryName: 'Gass',
                tabColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              CategoryTab(
                categoryName: 'Mineral Water',
                tabColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              CategoryTab(
                categoryName: 'Sugar',
                tabColor: Colors.white,
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio:
                9 / 11.2 /**9 / 11.9 */, // tambahkan nilai berikut
            children: <Widget>[
              ProductContainer(
//                productName: '${items[index].productName',
                productName: '$items[productPrice]',
                productPrice: '$items',
              ),
              ProductContainer(),
              ProductContainer(),
              ProductContainer(),
              ProductContainer(),
              ProductContainer(),
              ProductContainer(),
              ProductContainer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
