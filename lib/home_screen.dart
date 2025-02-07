import 'package:flutter/material.dart';
import 'package:nti_flutter/page1.dart';
import 'package:nti_flutter/page2.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {

  int curindex=0;
  List<Widget>pages=[
    Page1(),
    Page2(),
    Page1(),
    Page1(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pages[curindex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );

  }
}
