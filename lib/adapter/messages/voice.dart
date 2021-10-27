import 'package:miluq/adapter/messages/message.dart';

class Voice extends Message {
  String? voiceId;
  String? url;
  String? path;
  String? base64;
  int? length;

  Voice({this.voiceId, this.url, this.path, this.base64, this.length})
      : super('Voice');
}
