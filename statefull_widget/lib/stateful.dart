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
  _RedBoxState createState() {
    print('RedBox createState');
    return _RedBoxState();
  }
}

class _RedBoxState extends State<RedBox> {
  var number = 0;

  _RedBoxState() {
    print('🎒 RedBox state init');
  }

  @override
  void initState() {
    super.initState();
    print('RedBox initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print('RedBox didChangeDependencies');
  }

  @override
  void didUpdateWidget(RedBox oldWidget) {
    super.didUpdateWidget(oldWidget);

    print('RedBox didUpdateWidget');
  }

  @override
  void reassemble() {
    super.reassemble();

    print('RedBox reassemble');
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

  @override
  void deactivate() {
    print('RedBox deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('RedBox dispose');
    super.dispose();
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  _GreenBoxState createState() {
    print('GreenBox createState');
    return _GreenBoxState();
  }
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
  void initState() {
    super.initState();
    print('GreenBox initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print('GreenBox didChangeDependencies');
  }

  @override
  void didUpdateWidget(GreenBox oldWidget) {
    super.didUpdateWidget(oldWidget);

    print('GreenBox didUpdateWidget');
  }

  @override
  void reassemble() {
    super.reassemble();

    print('GreenBox reassemble');
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

  @override
  void deactivate() {
    print('GreenBox deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('GreenBox dispose');
    super.dispose();
  }
}

class PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
    );
  }
}
