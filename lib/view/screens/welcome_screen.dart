import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/view/screens/robot_screen.dart';
import 'package:test_45/view/widgets/custom_image_asset.dart';
import 'package:test_45/view/widgets/double_vertical_dividers_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: const CustomImageAsset(
                path: 'assets/images/welcome_background.png',
              ),
            ),
            const DoubleVerticalDividers(),
            SizedBox(
              width: 100.w,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline1,
                            children: [
                              TextSpan(text: 'Oranos'),
                              TextSpan(
                                text: '.',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                      color: Theme.of(context).accentColor,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Expert From Every Planet',
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      CustomButton(
                        name: 'Get Started',
                        onTab: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const RobotScreen(),
                            ),
                          );
                        },
                        height: 7.h,
                        width: 100.w,
                      ),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.headline3,
                          children: [
                            TextSpan(text: 'Don\'t have an account?'),
                            TextSpan(
                              text: ' SignUp',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    color: Theme.of(context).accentColor,
                                  ),
                            ),
                          ],
                        ),
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

class CustomButton extends StatelessWidget {
  final String name;
  final double height;
  final double width;
  final Function() onTab;
  const CustomButton({
    Key? key,
    required this.name,
    required this.onTab,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(2.w),
        ),
        child: Center(
          child: Text(
            name,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
