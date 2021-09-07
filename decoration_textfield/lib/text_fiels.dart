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
          // style: TextStyle(),
          //
          // controller: ,
          // focusNode: ,
          //
          
          // keyboardType: TextInputType.name,
          // textInputAction: TextInputAction.next,
          // keyboardAppearance: Brightness.light,
          //
          // textAlign: TextAlign.start,
          // textAlignVertical: TextAlignVertical.center,
          // textDirection: TextDirection.ltr,
          //
          // readOnly: false,
          // enabled: true,
          // enableInteractiveSelection: true,
          // selectionControls: TextSelectionControls(),
          // toolbarOptions: ToolbarOptions(),
          // buildCounter: ,
          //
          // showCursor: false,
          // cursorWidth: 1.0,
          // cursorHeight: 10.0,
          // cursorRadius: 5.0,
          // cursorColor: Colors.red,
          //
          // selectionHeightStyle: ui.BoxHeightStyle.tight,
          // selectionWidthStyle: ui.BoxWidthStyle.tight,
          //
          // autofocus: true,
          // obscuringCharacter: '*',
          // obscureText: true,
          // autocorrect: true,
          // enableSuggestions: true,
          // textCapitalization: TextCapitalization.none,
          //
          // smartDashesType: SmartDashesType.enabled,
          // smartQuotesType: SmartQuotesType.enabled,
          //
          // maxLines: null,
          // minLines: null,
          // expands: true,
          // maxLength: 10,
          // maxLengthEnforcement: MaxLengthEnforcement.none,
          // inputFormatters: [],
          //
          // onChanged: (value) {},
          // onEditingComplete: () {},
          // onSubmitted: (value) {},
          // onAppPrivateCommand: (value, arguments) {},
          // onTap: () {},
          //
          // scrollPadding: EdgeInsets.all(20),
          // dragStartBehavior: DragStartBehavior.down,
          // scrollController: ,
          // scrollPhysics: ,
          //
          // autofillHints: [''],
        ),
      ),
    );
  }
}
