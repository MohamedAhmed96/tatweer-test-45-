class Message {
  final String message;
  final String time;
  final bool isMe;

  Message({
    required this.message,
    required this.time,
    required this.isMe,
  });
}

List<Message> messages = [
  Message(
      message: 'hi',
      isMe: true,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: '1',
      isMe: false,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: '2',
      isMe: true,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: '3',
      isMe: false,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: '4',
      isMe: true,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: '5',
      isMe: false,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: 'ahmed',
      isMe: true,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: 'ashraf',
      isMe: false,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: '6',
      isMe: false,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: '7',
      isMe: true,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: '8',
      isMe: true,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
  Message(
      message: '9',
      isMe: false,
      time: DateTime.now().millisecondsSinceEpoch.toString()),
];
