import 'package:flutter/material.dart';

class CounterHelloButton extends StatefulWidget {
  // bir degisken var ve kucukde olsa bir hayat var o yuzden stateful yapiyoruz
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustomer = 0;
  final String _welcomeTitle = 'Hello';

  void _updateCounter() {
    setState(() {
      ++_counterCustomer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _updateCounter,
      child: Text('$_welcomeTitle $_counterCustomer'),
    );
  }
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
