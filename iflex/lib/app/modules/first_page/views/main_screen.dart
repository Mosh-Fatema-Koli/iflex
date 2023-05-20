import 'package:flutter/material.dart';
import 'package:iflex/app/modules/history/views/history_view.dart';
import 'package:iflex/app/modules/home/views/home_view.dart';
import 'package:iflex/app/modules/more/views/more_view.dart';
import 'package:iflex/app/modules/offer/views/offer_view.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    OfferView(),
    HistoryView(),
    MoreView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(

        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Offer',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'More',

            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey[600],
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ),
      );



  }
}