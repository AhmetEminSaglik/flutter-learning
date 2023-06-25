import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [CenterCircularProgress()],
        ),
        body: Column(children: const [
          LinearProgressIndicator(),
          CenterCircularProgress(),
          CenterCircularProgress(),
          CenterCircularProgress(),
          
        ]));
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    super.key,
  });
  final redColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
    /*return Center(
        child: CircularProgressIndicator(
      color:redColor,
      strokeWidth: 10,
      
    ));
    */
  }
}
