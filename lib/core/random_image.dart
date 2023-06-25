import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  RandomImage({super.key, this.width=100,this.height = 100});
  final int height;
  final int  width;
  late final imageUrl = 'https://picsum.photos/$width/$height';


  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl, height: height.toDouble(), width: width.toDouble(), fit: BoxFit.fill);
  }
}
