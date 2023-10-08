import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:testwavegame/pages/home_page/home_page.dart';

class ReplyPage extends StatefulWidget {
  const ReplyPage({super.key});

  @override
  State<ReplyPage> createState() => _ReplyPageState();
}

class _ReplyPageState extends State<ReplyPage> {
  @override
  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = const BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    return Scaffold(
      body: SlidingUpPanel(
        borderRadius: radius,
        minHeight: MediaQuery.of(context).size.height / 2,
        body: const HomePage(),
        panel: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 50),
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 4,
                        child: Center(
                          child: Text(
                            '댓글 0개',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: IconButton(
                            iconSize: 30,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const HomePage())));
                            },
                            icon: const Icon(Icons.cancel_outlined),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 312,
                color: Colors.transparent,
                child: const Center(
                  child: Text(
                    '아직 댓글이 없어요',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: 80,
                color: const Color(0xFFE0E0E0),
                // child: const HomeBottomSlidePage(),
              ),
            ],
          ),
        ),
        // footer: ,
      ),
    );
  }
}
