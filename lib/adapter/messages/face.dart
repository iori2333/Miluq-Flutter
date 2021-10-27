import 'package:miluq/adapter/messages/message.dart';

class Face extends Message {
  int faceId;
  String? name;

  Face({required this.faceId, this.name}) : super('Face');
}
