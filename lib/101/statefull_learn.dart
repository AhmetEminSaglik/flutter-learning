import 'package:flutter/material.dart';
import 'package:flutter_demo/core/random_image.dart';

// statless widget, immutable, degismez, sadece aldigini gosteriyor.
class StatefullLearn extends StatefulWidget {
  //sadece data alma isi yapar
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;
  void increaseValue() {
    setState(() {
      _countValue += 1;
    });
  }

  void decreaseValue() {
    setState(() {
      _countValue -= 1;
    });
  }

  // hayat burda belirlenir, kodlar burada degisir.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _incrementButton(),
          _decrementButton(),
        ],
      ),
      body: Column(
        children: [
          Positioned.fill(
              child: RandomImage(
            width: 300 + _countValue,
            height: 300 - _countValue,
          )),
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.displayMedium,
          )),
        ],
      ),
    );
  }

  Padding _decrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: FloatingActionButton(
        onPressed: () {
          decreaseValue();
        },
        child: Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        increaseValue();
      },
      child: Icon(Icons.add),
    );
  }
}
