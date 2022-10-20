import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/view/widgets/online_expert_cart_widget.dart';
import 'package:test_45/view/widgets/recommended_expert_cart_widget.dart';

class OnlineExpertsWidget extends StatelessWidget {
  const OnlineExpertsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Online Experts',
                style: Theme.of(context).textTheme.headline3,
              ),
              Icon(
                Icons.more_horiz,
                size: 6.w,
              )
            ],
          ),
        ),
        SizedBox(
          height: 25.h,
          width: 100.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => OnlineExpertCartWidget(),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
