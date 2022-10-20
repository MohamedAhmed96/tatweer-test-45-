import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/view/screens/experts_screen.dart';
import 'package:test_45/view/screens/welcome_screen.dart';
import 'package:test_45/view/widgets/custom_image_asset.dart';
import 'package:test_45/view/widgets/double_vertical_dividers_widget.dart';

class RobotScreen extends StatelessWidget {
  const RobotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            const DoubleVerticalDividers(),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 27.h,
                        width: 100.w,
                        margin: EdgeInsets.only(
                          right: 15.w,
                          left: 30.w,
                        ),
                        child: const CustomImageAsset(
                            path: 'assets/images/half_chat.png'),
                      ),
                      Container(
                        height: 15.h,
                        width: 100.w,
                        margin: EdgeInsets.only(
                          right: 25.w,
                          left: 18.w,
                          top: 2.h,
                        ),
                        child: RichText(
                          text: TextSpan(
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
                                      fontSize: 14.sp,
                                    ),
                            children: [
                              const TextSpan(text: 'Hi, My name is '),
                              TextSpan(
                                  text: 'Oranobot ',
                                  style: Theme.of(context).textTheme.headline2),
                              const TextSpan(
                                  text:
                                      'I will always be there to help and assist you.\n\nSay '),
                              TextSpan(
                                  text: 'Start ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2!
                                      .copyWith(fontWeight: FontWeight.w600)),
                              const TextSpan(text: 'To go to Next.'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 60.w,
                    child: const CustomImageAsset(
                      path: 'assets/images/robot.png',
                    ),
                  ),
                  Column(
                    children: [
                      CustomButton(
                        name: 'Next',
                        onTab: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ExpertsScreen(),
                            ),
                          );
                        },
                        height: 7.h,
                        width: 40.w,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.language,
                              size: 6.w,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              'English',
                              style: Theme.of(context).textTheme.headline3,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
