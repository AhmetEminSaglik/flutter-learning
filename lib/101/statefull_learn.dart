import 'package:flutter/material.dart';
import 'package:flutter_demo/101/product/counter_hello_button.dart';
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
      body: Column(
        children: [
          ImageForCounter(countValue: _countValue),
          DisplayMediumSizeTheCounter(countValue: _countValue),
          const CounterHelloButton()
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _incrementButton(),
          _decrementButton(),
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
        child: const Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('burda');
    return FloatingActionButton(
      onPressed: () {
        increaseValue();
      },
      child: const Icon(Icons.add),
    );
  }
}

class DisplayMediumSizeTheCounter extends StatelessWidget {
  const DisplayMediumSizeTheCounter({
    super.key,
    required int countValue,
  }) : _countValue = countValue;

  final int _countValue;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      _countValue.toString(),
      style: Theme.of(context).textTheme.displayMedium,
    ));
  }
}

class ImageForCounter extends StatelessWidget {
  const ImageForCounter({
    super.key,
    required int countValue,
  }) : _countValue = countValue;

  final int _countValue;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: RandomImage(
      width: 300 + _countValue,
      height: 300 - _countValue,
    ));
  }
}
