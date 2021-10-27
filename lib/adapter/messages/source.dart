import 'package:miluq/adapter/messages/message.dart';

class SourceMessage extends Message {
  int time;
  int id;

  SourceMessage({required this.id, required this.time}) : super('Source');
}
