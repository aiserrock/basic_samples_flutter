import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Example extends StatelessWidget {
  Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: CustomMultiChildLayout(
          delegate: OwnMultiChildLayoutDelegate(),
          children: [
            LayoutId(
              id: 1,
              child: Text('left  dsfghdg hgdsf gj hdgs fj'),
            ),
            LayoutId(
              id: 2,
              child: Text(
                  'middle dsghfg j fdhjsg j sdfjkhk  dsjfh  dsgfhjg  dsfgh sdhjg dsfhjg dhj dsfghj gsdfhj'),
            ),
            LayoutId(
              id: 3,
              child: Text('right gsdhfg sdghf  hdjsgf jg sdfhg j'),
            ),
          ],
        ),
      ),
    );
  }
}

class OwnMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  Size getSize(BoxConstraints constraints) =>
      Size(constraints.biggest.width, 100);

  @override
  void performLayout(Size size) {
    if (hasChild(1) && hasChild(2) && hasChild(3)) {
      final minOtherElementWidth = 50;

      final firstElementMaxWidth = size.width - minOtherElementWidth * 2;
      final firstElementSize = layoutChild(
        1,
        BoxConstraints.loose(Size(firstElementMaxWidth, size.height)),
      );

      final thridElementMaxWidth =
          size.width - firstElementSize.width - minOtherElementWidth;
      final thridElementSize = layoutChild(
        3,
        BoxConstraints.loose(
          Size(thridElementMaxWidth, size.height),
        ),
      );

      final secondElementMaxWidth =
          size.width - firstElementSize.width - thridElementSize.width;
      final secondElementSize = layoutChild(
        2,
        BoxConstraints.loose(
          Size(secondElementMaxWidth, size.height),
        ),
      );

      final firstElementYOffset = size.height / 2 - firstElementSize.height / 2;
      positionChild(1, Offset(0, firstElementYOffset));

      final thridElementHOffset = size.width - thridElementSize.width;
      final thridElementYOffset = size.height / 2 - thridElementSize.height / 2;
      positionChild(3, Offset(thridElementHOffset, thridElementYOffset));

      var secondElementHOffset = size.width / 2 - secondElementSize.width / 2;
      if (firstElementSize.width > secondElementHOffset) {
        secondElementHOffset = firstElementSize.width;
      } else if (thridElementHOffset <
          secondElementHOffset + secondElementSize.width) {
        secondElementHOffset = thridElementHOffset - secondElementSize.width;
      }
      final secondElementYOffset =
          size.height / 2 - secondElementSize.height / 2;
      positionChild(2, Offset(secondElementHOffset, secondElementYOffset));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
