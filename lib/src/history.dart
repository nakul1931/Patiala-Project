import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dashboard.dart';
import 'Account.dart';

class History extends StatefulWidget {
  int index;
  History({this.index});
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffe9263),
        bottomNavigationBar: CurvedNavigationBar(
          index: 1,
          height: 50,
          backgroundColor: Color(0xfffe9263),
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.history, size: 30),
            Icon(Icons.account_circle, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
            print(index);
            if (index == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            } else if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Account(),
                ),
              );
            } else if (index == 2) {
              print("About");
            }
          },
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 10,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
