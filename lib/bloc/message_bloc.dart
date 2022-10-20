import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_45/events/message_event.dart';
import 'package:test_45/models/message.dart';

class MessageBloc extends Bloc<MessageEvent, List<Message>> {
  MessageBloc(super.initialState);

  @override
  List<Message> get initialState => <Message>[];

  // @override
  // Stream<List<Message>> mapEventToState(MessageEvent event){
  //   return null;
  // }
}
