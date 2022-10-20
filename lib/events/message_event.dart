import 'package:test_45/models/message.dart';

class MessageEvent {
  Message? message;

  MessageEvent.add(Message message) {
    this.message = message;
  }
}
