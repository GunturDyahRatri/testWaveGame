import 'package:flutter/material.dart';
import 'package:testwavegame/pages/checkout/checkout.dart';
import 'package:testwavegame/pages/home_page/home_page.dart';
import 'package:testwavegame/pages/inbox/inbox.dart';
import 'package:testwavegame/pages/shop/shop.dart';
import 'package:testwavegame/pages/store/store.dart';
import 'package:testwavegame/widget/custom_bottom_navbar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({super.key});

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;

  static const List<Widget> _pages = [
    HomePage(),
    StorePage(),
    InboxPage(),
    CheckoutPage(),
    ShopPage(),
  ];

  void onIconTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectedPageIndex,
        onIconTapped: onIconTapped,
      ),
    );
  }
}
