import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(
          color: Colors.red,
          height: 100,
        ),
        Positioned.fill(
            top: 85,
            child: Container(
              color: Colors.brown,
            )),
        Positioned(
          // right: 0,
          left: 0,
          top: -12,
          // bottom: 20,
          // height: 50,
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
      ]),
    );
  }
}
