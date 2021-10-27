import 'package:miluq/adapter/messages/message.dart';

class MiraiCode extends Message {
  String code;

  MiraiCode({required this.code}) : super('MiraiCode');
}
