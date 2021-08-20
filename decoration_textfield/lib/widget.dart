import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: TextField(
          decoration: InputDecoration(
            // icon: Icon(Icons.ac_unit),
            // labelText: 'labelText',
            // labelStyle: TextStyle(),

            // helperText: 'helperText',
            // helperStyle: TextStyle(),
            // helperMaxLines: 1,

            // hintText: 'hintText',
            // hintStyle: TextStyle(),
            // hintTextDirection: TextDirection.ltr,
            // hintMaxLines: 1,

            // errorText: 'errorText',
            // errorStyle: TextStyle(),
            // errorMaxLines: 1,

            // floatingLabelBehavior: FloatingLabelBehavior.auto,
            // isCollapsed: true,
            // isDense: true, // сжимает по вертикали
            // contentPadding: EdgeInsets.zero,

            // prefixIcon: Icon(Icons.access_alarm),
            // prefixIconConstraints: BoxConstraints.tight(Size(10, 10)),
            // prefix: Text('prefix'),
            // prefixText: 'prefixText',
            // prefixStyle: TextStyle(),

            // suffixIcon: Icon(Icons.baby_changing_station),
            // suffixIconConstraints: BoxConstraints.tight(Size(10, 10)),
            // suffix: Text('suffix'),
            // suffixText: 'suffixText',
            // suffixStyle: TextStyle(),

            // counter: Text('counter'),
            // counterText: 'counterText',
            // counterStyle: TextStyle(),

            // filled: true,
            // fillColor: Colors.red,
            // focusColor: Colors.blue,
            // hoverColor: Colors.green,

            // errorBorder: UnderlineInputBorder(
            // borderSide: BorderSide(
            //   color: Colors.red,
            //   width: 1.0,
            //   style: BorderStyle.solid,
            // ),
            //   borderRadius: BorderRadius.circular(10),
            // ),
            // focusedBorder: OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.green,
            //     width: 1.0,
            //     style: BorderStyle.solid,
            //   ),
            // ),
            // // focusedErrorBorder: OutlineInputBorder(),
            // // disabledBorder: OutlineInputBorder(),
            // enabledBorder: OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.red,
            //     width: 1.0,
            //     style: BorderStyle.solid,
            //   ),
            // ),
            // border: OutlineInputBorder(
            // borderSide: BorderSide(
            //   color: Colors.green,
            //   width: 1.0,
            //   style: BorderStyle.solid,
            // ),
            // ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            enabled: true,
            // alignLabelWithHint: false,
          ),
        ),
      ),
    );
  }
}
// enable
// enable + focused
// enable + error
// enable + error + focused
// disable
