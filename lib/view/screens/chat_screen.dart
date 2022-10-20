import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_45/models/message.dart';
import 'package:test_45/view/widgets/custom_image_asset.dart';
import 'package:test_45/view/widgets/double_vertical_dividers_widget.dart';
import 'package:test_45/view/widgets/message_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageTextEditingController =
      TextEditingController();
  late ScrollController _scrollController;
  void scrollToBottom() {
    final bottomOffset = _scrollController.position.maxScrollExtent;
    _scrollController.animateTo(
      bottomOffset,
      duration: Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Flexible(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: messages.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(1.h),
                    child: MessageWidget(message: messages[index]),
                  ),
                  // Text('${messages[index].message}'),
                ),
              ),
              SizedBox(
                height: 7.h,
                child: Row(
                  children: [
                    Container(
                      height: 7.h,
                      width: 86.w,
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      decoration: BoxDecoration(color: Color(0xFFF6F7F8)),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 1.w),
                            child: Icon(
                              Icons.language,
                              size: 6.w,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: _messageTextEditingController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type Something...'),
                            ),
                          ),
                          Container(
                            height: 3.h,
                            width: 3.h,
                            padding: EdgeInsets.only(right: 1.w),
                            child: CustomImageAsset(
                                path: 'assets/images/mic_logo.png'),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (_messageTextEditingController.text.isNotEmpty) {
                          setState(() {
                            messages.add(
                              Message(
                                  message: _messageTextEditingController.text,
                                  isMe: true,
                                  time: DateTime.now()
                                      .millisecondsSinceEpoch
                                      .toString()),
                            );
                            _messageTextEditingController.clear();
                          });
                        }

                        final position =
                            _scrollController.position.maxScrollExtent + 5.h;
                        _scrollController.jumpTo(position);

                        // _scrollController.animateTo(0.0,
                        //     duration: Duration(milliseconds: 300),
                        //     curve: Curves.easeOut);
                      },
                      child: Container(
                        height: 3.h,
                        width: 3.h,
                        child: CustomImageAsset(
                            path: 'assets/images/send_logo.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          DoubleVerticalDividers(),
        ]),
      ),
    );
  }
}
