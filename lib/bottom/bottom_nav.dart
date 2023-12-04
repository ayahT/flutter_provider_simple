import 'package:flutter/material.dart';
import 'package:flutter_provider_simple/page/home_page_page.dart';
import 'package:flutter_provider_simple/page/setting_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> list = [HomePage(), SettingPage()];
  int Currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings')
        ],
        selectedIndex: Currentpage,
        indicatorColor: const Color.fromARGB(72, 0, 150, 135),
        surfaceTintColor:const Color.fromARGB(85, 86, 83, 83),
        onDestinationSelected: (value) {
          setState(() {
            Currentpage = value;
          });
        },
      ),
      body: list[Currentpage],
    );
  }
}
