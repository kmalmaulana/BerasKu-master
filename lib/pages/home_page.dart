import 'dart:async';
import 'package:berasku/firestore_services.dart';
import 'package:berasku/products.dart';
import 'package:berasku/widgets/category_tab.dart';
import 'package:berasku/widgets/product_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/product_container.dart';

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
        print('printing $items[productName]');
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
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                childAspectRatio: 9 / 11.2,
              ),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index){
                return ProductContainer(
                  productName: '${items[index].productName}',
                  productPrice: '${items[index].productPrice}',
                );
              },
            )),
      ],
    );
  }
}
