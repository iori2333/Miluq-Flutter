import 'package:miluq/adapter/messages/message.dart';

class App extends Message {
  String content;

  App({required this.content}) : super('App');
}
