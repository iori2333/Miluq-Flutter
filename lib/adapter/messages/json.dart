import 'package:miluq/adapter/messages/message.dart';

class Json extends Message {
  String json;

  Json({required this.json}) : super('Json');
}
