import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/view/screens/chat_screen.dart';

class OnlineExpertCartWidget extends StatelessWidget {
  const OnlineExpertCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ChatScreen(),
          ),
        );
      },
      child: SizedBox(
        height: 10.h,
        width: 10.h,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 9.h,
                  width: 9.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFDFE8EB),
                  ),
                ),
                Positioned(
                  right: 1.h,
                  child: Container(
                    height: 1.h,
                    width: 1.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF62DD91),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.h),
              child: Text('Name'),
            ),
          ],
        ),
      ),
    );
  }
}
