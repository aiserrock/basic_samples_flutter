import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RedBox();
  }
}

class RedBox extends StatefulWidget {
  RedBox() {
    print('🏁 RedBox init');
  }

  @override
  _RedBoxState createState() => _RedBoxState();
}

class _RedBoxState extends State<RedBox> {
  var number = 0;

  _RedBoxState() {
    print('🎒 RedBox state init');
  }

  void _increment() {
    number += 1;
    setState(() {});
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
              child: Center(
                child: ElevatedButton(
                  onPressed: _increment,
                  child: Text('$number'),
                ),
              ),
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

class GreenBox extends StatefulWidget {
  GreenBox() {
    print('🏁 GreenBox init');
  }

  @override
  _GreenBoxState createState() => _GreenBoxState();
}

class _GreenBoxState extends State<GreenBox> {
  var _text = 'start';

  void _changeText(String text) {
    _text = text;
    setState(() {});
  }

  _GreenBoxState() {
    print('🎒 GreenBox state init');
  }

  @override
  Widget build(BuildContext context) {
    print('🧱 GreenBox build');
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(_text),
                TextField(onChanged: _changeText),
              ],
            ),
          ),
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
