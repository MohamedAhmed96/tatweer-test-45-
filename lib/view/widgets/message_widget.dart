import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/models/message.dart';
import 'package:test_45/view/widgets/custom_image_asset.dart';

class MessageWidget extends StatelessWidget {
  final Message message;
  const MessageWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment:
          message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        !message.isMe
            ? Container(
                height: 10.w,
                width: 10.w,
                padding: EdgeInsets.all(2.w),
                margin: EdgeInsets.only(right: 2.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFD8D8D8)),
                child:
                    CustomImageAsset(path: 'assets/images/reciever_logo.png'),
              )
            : Container(),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 70.w),
          child: Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.w),
                  color: message.isMe
                      ? Theme.of(context).accentColor
                      : Color(0xFFD8D8D8)),
              child: Text('${message.message}')),
        ),
        message.isMe
            ? Container(
                height: 5.w,
                width: 5.w,
                margin: EdgeInsets.only(left: 2.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CustomImageAsset(path: 'assets/images/sender_logo.png'),
              )
            : Container(),
      ],
    );
  }
}
