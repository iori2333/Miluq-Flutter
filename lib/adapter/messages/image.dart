import 'package:miluq/adapter/messages/message.dart';

class Image extends Message {
  String? imageId;
  String? url;
  String? path;
  String? base64;

  Image({this.imageId, this.url, this.path, this.base64}) : super('Image');
}

class FlashImage extends Message {
  String? imageId;
  String? url;
  String? path;
  String? base64;

  FlashImage({this.imageId, this.url, this.path, this.base64})
      : super('FlashImage');
}
