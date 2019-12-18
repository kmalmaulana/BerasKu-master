import 'package:berasku/widgets/category_tab.dart';
import 'package:berasku/widgets/listview_prhotos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
 import 'package:berasku/products.dart';
 import 'package:cloud_firestore/cloud_firestore.dart';
// import 'task.dart';
// import 'firestoreservice.dart';
 import 'package:firebase_core/firebase_core.dart';

import 'home_page.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String productName,
      productWeight,
      productQuality,
      productStock,
      productPrice,
      productDescription;

  getProductName(productName) {
    this.productName = productName;
  }

  getProductWeight(productWeight) {
    this.productWeight = productWeight;
  }

  getProductQuality(productQuality) {
    this.productQuality = productQuality;
  }

  getProductStock(productStock) {
    this.productStock = productStock;
  }

  getProductPrice(productPrice) {
    this.productPrice = productPrice;
  }

  getProductDescription(productDescription) {
    this.productDescription = productDescription;
  }

  addProduct() {
    DocumentReference ds =
        Firestore.instance.collection('products').document(productName);
    Map<String, dynamic> products = {
      "productName": productName,
      "productWeight": productWeight,
      "productQuality": productQuality,
      "productStock": productStock,
      "productPrice": productPrice,
      "productDescription": productDescription
    };

    ds.setData(products).whenComplete(() {
      print("Product posted!");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Product Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 47,
                  child: TextFormField(
                    onChanged: (String productName) {
                      getProductName(productName);
                    },
                    decoration: InputDecoration(
                      // labelText: "Nama Product",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Weight',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 47,
                  child: TextFormField(
                    onChanged: (String productWeight) {
                      getProductWeight(productWeight);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Quality',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 47,
                  child: TextFormField(
                    onChanged: (String productQuality) {
                      getProductQuality(productQuality);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Stock',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 47,
                  child: TextFormField(
                    onChanged: (String productStock) {
                      getProductStock(productStock);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Price',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 47,
                  child: TextFormField(
                    onChanged: (String productPrice) {
                      getProductPrice(productPrice);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Product Description',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 47,
                  child: TextFormField(
                    onChanged: (String productDescription) {
                      getProductDescription(productDescription);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Category',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 35,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CategoryTab(
                        categoryName: 'All',
                        tabColor: Colors.black12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CategoryTab(
                        categoryName: 'Gass',
                        tabColor: Colors.black12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CategoryTab(
                        categoryName: 'Rice',
                        tabColor: Colors.black12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CategoryTab(
                        categoryName: 'Mineral Water',
                        tabColor: Colors.black12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CategoryTab(
                        categoryName: 'Sugar',
                        tabColor: Colors.black12,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Photos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ListViewPhotos(
                        tabColor: Colors.black12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ListViewPhotos(
                        tabColor: Colors.black12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ListViewPhotos(
                        tabColor: Colors.black12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ListViewPhotos(
                        tabColor: Colors.black12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Container(
                    width: 400,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red),
                    child: Center(
                        child: Text(
                      'Post Product',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    )),
                  ),
                  onTap: () {
                    addProduct();
//                    Navigator.push(HomePage(), route)
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
