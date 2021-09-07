import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GreenBox(),
      );
    });
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
  var isDeactivated = false;
  var isDisposed = false;

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
    print(
      '🧱 GreenBox build isDeactivated: $isDeactivated, isDisposed: $isDisposed',
    );
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          Text(_text),
          TextField(onChanged: _changeText),
        ],
      ),
    );
  }

  @override
  void deactivate() {
    print('GreenBox deactivate');
    isDeactivated = true;
    super.deactivate();
  }

  @override
  void dispose() {
    print('GreenBox dispose');
    isDisposed = true;
    super.dispose();
  }
}
