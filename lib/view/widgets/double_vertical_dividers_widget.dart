import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DoubleVerticalDividers extends StatelessWidget {
  const DoubleVerticalDividers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: Divider(
            thickness: 0.5.w,
            color: Theme.of(context).accentColor,
          ),
        ),
        RotatedBox(
          quarterTurns: 1,
          child: Divider(
            thickness: 0.5.w,
            color: Theme.of(context).accentColor,
          ),
        ),
      ],
    );
  }
}
