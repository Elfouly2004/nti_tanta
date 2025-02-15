import 'package:flutter/material.dart';
import 'package:nti_flutter/features/calls/view/screens/call_screen.dart';
import '../../../tools/views/screens/whats_tools_screen.dart';
import '../../../updates/views/screens/whats_updates_screen.dart';
import '../widgets/custom_appbar.dart';
import 'home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curindex = 0;

  List<Widget> pages = [
    Home(),
    CallScreen(),
    WhatsAppUpdatesScreen(),
    WhatsAppToolsScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: pages[curindex],

      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          currentIndex: curindex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              curindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_history_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.houseboat_rounded),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
