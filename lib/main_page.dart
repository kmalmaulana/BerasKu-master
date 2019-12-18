import 'package:berasku/pages/add_product_page.dart';
import 'package:berasku/pages/notifications_page.dart';
import 'package:flutter/material.dart';
import 'package:berasku/pages/home_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Color(0xFFF0F0F0),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(8),
        child: FloatingActionButton(
          elevation: 0.0,
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddProductPage()));
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), title: Text('Notification')),
          ]),
      body: getBodyWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  getBodyWidget() {
    return (_currentIndex == 0) ? HomePage() : NotificationPage();
  }
}
