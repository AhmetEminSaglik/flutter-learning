import 'package:flutter/material.dart';
import 'package:flutter_demo/101/product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  // bir degisken var ve kucukde olsa bir hayat var o yuzden stateful yapiyoruz
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustomer = 0;

  void _updateCounter() {
    setState(() {
      ++_counterCustomer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _updateCounter,
      child: Text('${LanguageItems.welcomeTitle} $_counterCustomer'),
    );
  }
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
