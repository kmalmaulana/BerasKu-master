import 'package:flutter/material.dart';

class ListViewPhotos extends StatelessWidget {
  final Color tabColor;

  ListViewPhotos({@required this.tabColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: tabColor,
      ),
      child: Center(child: Icon(Icons.image)),
    );
  }
}
