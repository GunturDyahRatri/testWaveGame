import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ReplyPage extends StatefulWidget {
  const ReplyPage({super.key});

  @override
  State<ReplyPage> createState() => _ReplyPageState();
}

class _ReplyPageState extends State<ReplyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SlidingUpPanel(
        minHeight: MediaQuery.of(context).size.height / 2,
        maxHeight: 0,
        header: const Center(
          child: Text(
            "Description",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        body: Container(),
        panel: SingleChildScrollView(
          child: Column(
            children: [
                Text("ini adalah body yg bisa d scroll"),
            ],
          ),
        ),
        // footer: ,
      ),
    );
  }
}
