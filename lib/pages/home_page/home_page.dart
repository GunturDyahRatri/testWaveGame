import 'package:flutter/material.dart';
import 'package:testwavegame/widget/home_bottom_side_bar.dart';
// import 'package:testwavegame/widget/home_bottom_slide.dart';
import 'package:testwavegame/widget/home_side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Container(
            height: 50,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
              // boxShadow: const [
              //   BoxShadow(
              //       offset: Offset(0, 4), blurRadius: 4, color: Colors.black26),
              // ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Center(
                      child: Text(
                        '추천',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const Text(
                  '팔로우',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        onPageChanged: (page) => {print("Page changed to $page")},
        itemBuilder: (context, index) {
          return Stack(
            // alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: MediaQuery.of(context).size.height,
                height: MediaQuery.of(context).size.height,
                color: Colors.transparent,
                child: Image.asset(
                  'assets/home_image.png',
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 420.0),
                      child: Container(
                        width: MediaQuery.of(context).size.height / 7,
                        height: MediaQuery.of(context).size.height / 100,
                        color: Colors.transparent,
                        child: const HomeSideBar(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: const HomeBottomSlidePage(),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
