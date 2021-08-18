import 'package:flutter/material.dart';

class CustomSingleChildLayoutExample extends StatelessWidget {
  CustomSingleChildLayoutExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: CustomSingleChildLayout(
          delegate: LayoutDelegate(),
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class LayoutDelegate extends SingleChildLayoutDelegate {
  Size getSize(BoxConstraints constraints) => constraints.biggest;

  BoxConstraints getConstraintsForChild(BoxConstraints constraints) =>
      constraints;

  Offset getPositionForChild(Size size, Size childSize) => Offset.zero;

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return true;
  }
}
