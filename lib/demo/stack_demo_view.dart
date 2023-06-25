import 'package:flutter/material.dart';
import 'package:flutter_demo/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardHeight = 50.0;
  final _cardWidth = 330.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: _cardHeight / 2,
                  child: RandomImage(width: 1080, height: 720),
                ),
                Positioned(
                  height: _cardHeight,
                  bottom: 0,
                  width: _cardWidth,
                  child: SizedBox(
                    child: _cardCustom(),
                  ),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }

  Card _cardCustom() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
