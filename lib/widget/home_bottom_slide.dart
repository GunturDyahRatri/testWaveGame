import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testwavegame/models/data_model.dart';

class HomeBottomSlidePage extends StatefulWidget {
  const HomeBottomSlidePage({super.key});

  @override
  State<HomeBottomSlidePage> createState() => _HomeBottomSlidePageState();
}

class _HomeBottomSlidePageState extends State<HomeBottomSlidePage> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1,
              child: PageView.builder(
                itemCount: 10,
                physics: const ClampingScrollPhysics(),
                controller: _pageController,
                itemBuilder: (context, index) {
                  return carouselView(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget carouselView(int index) {
    return AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0.0;
          return Transform.rotate(
            angle: pi * value,
            child: carouselCard(dataList[index]),
          );
        });
  }

  Widget carouselCard(DataModel data) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    height : 30,
                    width : 30,
                    image: AssetImage(data.imageName), fit: BoxFit.cover),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.black26),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                
                Text(
                  data.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
                Text(
                  data.description,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
                Text(
                  data.price,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
