import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/view/widgets/custom_image_asset.dart';

class ExpertsScreenTopWidget extends StatelessWidget {
  const ExpertsScreenTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      width: 100.w,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 7.w,
          width: 7.w,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.w),
            child:
                const CustomImageAsset(path: 'assets/images/profile_photo.png'),
          ),
        ),
        RichText(
          text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20.sp),
            children: [
              const TextSpan(text: 'Oranos'),
              TextSpan(
                text: '.',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: Theme.of(context).accentColor,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 7.w,
          width: 7.w,
          child: const CustomImageAsset(path: 'assets/images/search_photo.png'),
        ),
      ]),
    );
  }
}
