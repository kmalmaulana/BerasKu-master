import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  final String categoryName;
  final Color tabColor;

  CategoryTab({@required this.categoryName, this.tabColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: tabColor,
      ),
      child: Center(child: Text(categoryName)),
    );
  }
}
