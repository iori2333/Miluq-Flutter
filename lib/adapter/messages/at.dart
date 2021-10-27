import 'package:miluq/adapter/messages/message.dart';

class At extends Message {
  int target;
  String display;

  At({
    required this.target,
    required this.display,
  }) : super('At');
}
