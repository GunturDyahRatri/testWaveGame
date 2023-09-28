import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.selectedPageIndex, required this.onIconTapped});
  final int selectedPageIndex;
  final Function onIconTapped;
  @override
  Widget build(BuildContext context) {
    final barHeight = MediaQuery.of(context).size.height * 0.08;
    return BottomAppBar(
      color: Colors.black,
      child: SizedBox(
        height: barHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomNavBarItem(0, 'Home', const TextStyle(), 'home'),
            _bottomNavBarItem(1, 'Store', const TextStyle(), 'store'),
            _bottomNavBarItem(2, 'Inbox', const TextStyle(), 'inbox'),
            _bottomNavBarItem(3, 'Checkout', const TextStyle(), 'checkout'),
            _bottomNavBarItem(4, 'Shop', const TextStyle(), 'shop'),
          ],
        ),
      ),
    );
  }

  _bottomNavBarItem(
      int index, String label, TextStyle textStyle, String iconName) {
    bool isSelected = selectedPageIndex == index;
    Color iconAndTextColor = isSelected ? Colors.white : Colors.white60;

    if (isSelected && selectedPageIndex == 0) {
      iconAndTextColor = Colors.white;
    }
    return GestureDetector(
      onTap: () => onIconTapped(index),
      child: Column(
        children: [
          Image.asset(
            'assets/${isSelected ? iconName : iconName}.png',
            color: iconAndTextColor,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            label,
            style: textStyle.copyWith(color: iconAndTextColor),
          ),
        ],
      ),
    );
  }

  // _addVideoNavItem(double height){}
}
