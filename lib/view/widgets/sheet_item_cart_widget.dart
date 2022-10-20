import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/view/widgets/custom_image_asset.dart';

class SheetItemCartWidget extends StatelessWidget {
  final String title;
  final String numberOfExperts;
  final String leadingIcon;
  const SheetItemCartWidget(
      {super.key,
      required this.title,
      required this.numberOfExperts,
      required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: 100.w,
      margin: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.w),
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
          width: 0.2.w,
        ),
      ),
      child: ListTile(
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 6.w,
        ),
        title: Text(title),
        subtitle: Text('$numberOfExperts Experts'),
        leading: SizedBox(
          height: 10.w,
          width: 10.w,
          child: CustomImageAsset(
            path: leadingIcon,
          ),
        ),
      ),
    );
  }
}
