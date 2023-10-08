// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:testwavegame/widget/reply_page.dart';
// import 'package:testwavegame/widget/reply_page.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeSideBar extends StatelessWidget {
  const HomeSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TextStyle style = Theme.of(context)
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _sideBarItem(context, 'like', '30'),
          // Stack(
          //   children: <Widget>[
              _sideBarItem(context, 'reply', '2'),
          //   ],
          // ),
          _sideBarItem(context, 'share', ''),
          _profileImage(),
        ],
      ),
    );


    
  }
 Widget _sideBarItem(BuildContext context, String iconName, String label) {
    return InkWell(
      onTap:(() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) => const ReplyPage())));
                }),
      child: Column(
        children: [
          Image.asset('assets/$iconName.png'),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
 

  _profileImage() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(25),
            image: const DecorationImage(
              image: NetworkImage('https://picsum.photos/id/1062/400/400'),
            ),
          ),
        ),
      ],
    );
  }
}
