import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello Icon Learn View')),
      body: Column(children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(context).colorScheme.background,//iconColor.froly,
              size: iconSize.iconSmall,
            ))
      ]),
    );
  }
}

class IconSizes {
  final double iconSmall = 50;
}
class IconColors{
  final Color froly = const Color(0xffED617A);
}
