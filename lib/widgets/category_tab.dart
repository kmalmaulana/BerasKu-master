import 'package:flutter/material.dart';

class CategoryTab extends StatefulWidget {
  final String categoryName;
  Color tabColor;

  CategoryTab({@required this.categoryName, this.tabColor});

  @override
  _CategoryTabState createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: widget.tabColor,
        ),
        child: Center(child: Text(widget.categoryName)),
      ),
      onTap: (){
      }
    );
  }
}
