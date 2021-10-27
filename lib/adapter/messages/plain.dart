import 'package:miluq/adapter/messages/message.dart';

class Plain extends Message {
  String text;

  Plain({required this.text}) : super('Plain');
}
