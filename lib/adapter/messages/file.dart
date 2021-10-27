import 'package:miluq/adapter/messages/message.dart';

class File extends Message {
  String name;
  String id;
  int size;

  File({required this.name, required this.id, required this.size})
      : super('File');
}
