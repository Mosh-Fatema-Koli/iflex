import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
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

  final _pageController = PageController(initialPage: 0);

  int maxCount = 4;

  /// widget list
  final List<Widget> bottomBarPages = [
    HomeView(),
    OfferView(),HistoryView(),MoreView()

  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,

      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
        pageController: _pageController,
        color: Colors.white,
        showLabel: true,
        notchColor: Colors.blue,
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            itemLabel: 'Home',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.local_offer,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.local_offer,
              color: Colors.white,
            ),
            itemLabel: 'Offer',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.history,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.history,
              color: Colors.white,
            ),
            itemLabel: 'History',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.menu,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            itemLabel: 'More',
          ),


        ],
        onTap: (index) {
          /// control your animation using page controller
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        },
      )
          : null,
    );
  }
}