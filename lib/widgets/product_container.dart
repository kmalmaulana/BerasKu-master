import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final String productName;
  final String productPrice;

  ProductContainer({this.productName, this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0)),
              child: Image.asset(
                'images/beras1.png',
              ),
            ),
            Center(
              child: Text(
                productName,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                maxLines: 2,
              ),
            ),
            Text(
              productPrice,
              style: TextStyle(fontWeight: FontWeight.w400, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
