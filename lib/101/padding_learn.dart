import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: ProjectPadding.pagePaddingVertical,
          child: Column(
            children: [
              Container(color: Colors.white, height: 100, width: 200),
              Padding(
                  padding: const EdgeInsets.only(right: 20) +
                      const EdgeInsets.symmetric(vertical: 10),
                  child: Container(color: Colors.blue, height: 100)),
              Container(color: Colors.orange, height: 100, width: 200),
            ],
          ),
        ));
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10,horizontal: 25);
}
