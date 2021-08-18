import 'package:flutter/material.dart';
import 'dart:math';

class CustomMultiChildLayoutExample extends StatelessWidget {
  CustomMultiChildLayoutExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: CustomMultiChildLayout(
          delegate: LayoutDelegate(),
          children: [
            LayoutId(
              id: 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
            ),
            LayoutId(
              id: 2,
              child: Container(
                width: 1000,
                color: Colors.red,
              ),
            ),
            LayoutId(
              id: 3,
              child: Text("data", textDirection: TextDirection.ltr),
            ),
          ],
        ),
      ),
    );
  }
}

class LayoutDelegate extends MultiChildLayoutDelegate {
  Size getSize(BoxConstraints constraints) => Size(constraints.maxWidth, 20);

  @override
  void performLayout(Size size) {
    final margin = 10.0;
    final firstSize = layoutChild(
      1,
      BoxConstraints.loose(size),
    );
    positionChild(1, Offset(margin, 0));

    final thridthSize = layoutChild(
      3,
      BoxConstraints.loose(size),
    );
    final thridthHOffset = size.width - thridthSize.width - margin;
    positionChild(3, Offset(thridthHOffset, 0));

    final secondMaxWidth =
        size.width - margin * 4 - firstSize.width - thridthSize.width;
    final secondMaxSize = Size(secondMaxWidth, size.height);
    final secondSize = layoutChild(
      2,
      BoxConstraints.loose(secondMaxSize),
    );

    final secondHIdealOffset = firstSize.width + margin * 2;
    final secondHOffset = size.width / 2 - secondSize.width / 2;
    final h = max(secondHIdealOffset, secondHOffset);
    positionChild(2, Offset(h, 0));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
