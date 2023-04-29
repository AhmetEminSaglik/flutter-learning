import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        _CustomCard(
          child: SizedBox(
              height: 100, width: 300, child: Center(child: Text("Ahmet 1"))),
        ),
        _CustomCard(
          child: SizedBox(
              height: 100, width: 300, child: Center(child: Text("Emin"))),
        ),
        _CustomCard(
          child: SizedBox(
              height: 100, width: 300, child: Center(child: Text("Saglik"))),
        ),
        _CustomCard(
          child: SizedBox(
              height: 100, width: 300, child: Center(child: Text("Ahmet 4"))),
        )
//   shape: StadiumBorder());


        // Card(
        //     elevation: 10,
        //     margin: ProjectMargins.cardMargin,
        //     color: Colors.green,
        //     child: SizedBox(
        //         height: 100, width: 300, child: Center(child: Text("Ahmet"))),
        //     shape: StadiumBorder()),
        // Card(
        //     elevation: 10,
        //     margin: ProjectMargins.cardMargin,
        //     color: Theme.of(context).colorScheme.error,
        //     child: SizedBox(height: 100, width: 200),
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(20))),
      ]),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  _CustomCard({super.key, required this.child});
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        margin: ProjectMargins.cardMargin,
        color: Colors.green,
        child: child,
        shape: roundedRectangleBorder);
  }
}
