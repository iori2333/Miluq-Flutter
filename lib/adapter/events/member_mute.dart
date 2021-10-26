import 'package:miluq/adapter/event.dart';

class MemberMuteEvent extends Event {
  MemberMuteEvent(String type, Map<String, dynamic> data) : super(type, data);

  _MemberMuteEventData parseJson() => _MemberMuteEventData(data);

  @override
  void handle() {
    // TODO: implement handle
  }
}

class _MemberMuteEventData {
  _MemberMuteEventData(dynamic data);
}
