import 'package:berasku/widgets/category_tab.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        CategoryTab(categoryName: 'All'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Rice'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Gass'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Mineral Water'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Sugar'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'New Order!'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Rice'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Gass'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Mineral Water'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Sugar'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'New Order!'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Rice'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Gass'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Mineral Water'),
        SizedBox(
          height: 10,
        ),
        CategoryTab(categoryName: 'Sugar'),
      ],
    );
  }
}
