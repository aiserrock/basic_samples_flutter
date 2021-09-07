import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RedBox();
  }
}

class RedBox extends StatelessWidget {
  RedBox() {
    print('🏁 RedBox init');
  }

  @override
  Widget build(BuildContext context) {
    print('🧱 RedBox build');
    return Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              child: BlueBox(),
            ),
            SizedBox(height: 30),
            Expanded(
              child: GreenBox(),
            ),
          ],
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  BlueBox() {
    print('🏁 BlueBox init');
  }

  @override
  Widget build(BuildContext context) {
    print('🧱 BlueBox build');
    return Container(
      color: Colors.blue,
    );
  }
}

class GreenBox extends StatelessWidget {
  GreenBox() {
    print('🏁 GreenBox init');
  }

  @override
  Widget build(BuildContext context) {
    print('🧱 GreenBox build');
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: PinkBox(),
            ),
          ),
        ],
      ),
    );
  }
}

class PinkBox extends StatelessWidget {
  PinkBox() {
    print('🏁 PinkBox init');
  }

  @override
  Widget build(BuildContext context) {
    print('🧱 PinkBox build');
    return Container(
      color: Colors.pink,
    );
  }
}
